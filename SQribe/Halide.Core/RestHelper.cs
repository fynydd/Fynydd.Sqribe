// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Text;
using Fynydd.Halide.Constants;

namespace Fynydd.Halide
{
    /// <summary>
    /// Simple class for performing HTTP REST requests.
    /// </summary>
    /// <example>
    /// <code>
    /// RestHelper request = new RestHelper();
    /// request.Url="http://seeker.dice.com/jobsearch/servlet/JobSearch";
    /// request.HeaderItems.Add("X-App-Token","skadjfhaskjfs");
    /// request.RequestType = RestHelper.RequestTypeEnum.GET;
    /// request.RequestFormat = RestHelper.RequestFormatEnum.JSON;
    /// request.Timeout = 10000;
    /// string result = request.Call();
    /// </code>
    /// </example>
    public class RestHelper
    {
        #region Properties and variables

        private string m_url = String.Empty;
        private bool _forceTls2 = false;
        private string payload = null;
        private int timeout = 30000;
        private Dictionary<string, string> h_values = new Dictionary<string, string>();
        private RequestFormatEnum f_type = RequestFormatEnum.JSON;
        private RequestTypeEnum m_type = RequestTypeEnum.GET;

        private string status = "";

        /// <summary>
        /// Content for the request
        /// </summary>
        public string Payload
        {
            get
            {
                return payload;
            }

            set
            {
                payload = value;
            }
        }

        /// <summary>
        /// Timeout for the request in milliseconds
        /// </summary>
        public int Timeout
        {
            get
            {
                return timeout;
            }

            set
            {
                timeout = value;
            }
        }

        /// <summary>
        /// The last status returned by the HttpWebResponse object (e.g. 201, 200, etc.)
        /// </summary>
        public string LastStatus
        {
            get
            {
                return status;
            }

            set
            {
                status = value;
            }
        }

        /// <summary>
        /// Gets or sets the url to submit the post to.
        /// </summary>
        public string Url
        {
            get
            {
                return m_url;
            }
            set
            {
                m_url = value;
            }
        }

        /// <summary>
        /// Gets or sets the name value collection of header items.
        /// </summary>
        public Dictionary<string, string> HeaderItems
        {
            get
            {
                return h_values;
            }
            set
            {
                h_values = value;
            }
        }

        /// <summary>
        /// Gets or sets the type of action to perform against the url.
        /// </summary>
        public RequestTypeEnum RequestType
        {
            get
            {
                return m_type;
            }
            set
            {
                m_type = value;
            }
        }

        /// <summary>
        /// Gets or sets the request and response format in-use.
        /// </summary>
        public RequestFormatEnum RequestFormat
        {
            get
            {
                return f_type;
            }
            set
            {
                f_type = value;
            }
        }

        /// <summary>
        /// Force TLS 2.0
        /// </summary>
        public bool ForceTls2
        {
            get
            {
                return _forceTls2;
            }
            set
            {
                _forceTls2 = value;
            }
        }

        #endregion

        /// <summary>
        /// Default constructor.
        /// </summary>
        public RestHelper()
        {
        }

        #region Methods

        /// <summary>
        /// Execute the REST request.
        /// </summary>
        /// <returns>Response data as a string</returns>
        public string Call()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(Url);
            HttpWebResponse response = null;
            string result = "";

            request.Method = RequestType.ToString();
            request.AllowAutoRedirect = true;
            request.UserAgent = "Mozilla/5.0";
            request.ContentType = "application/x-www-form-urlencoded; charset=utf-8";
            request.CookieContainer = new CookieContainer();
            request.Referer = "";

            switch (RequestFormat)
            {
                case RequestFormatEnum.JSON:
                    request.Accept = "application/json";
                    break;

                case RequestFormatEnum.XML:
                    request.Accept = "application/xml";
                    break;

                default:
                    request.Accept = "text/html";
                    break;
            }

            request.Timeout = Timeout;
            request.ReadWriteTimeout = Timeout;

            if (HeaderItems != null)
            {
                foreach (KeyValuePair<string, string> item in HeaderItems)
                {
                    request.Headers.Add(item.Key, item.Value);
                }
            }

            if (RequestType == RequestTypeEnum.POST || RequestType == RequestTypeEnum.PUT || RequestType == RequestTypeEnum.PATCH)
            {
                if (string.IsNullOrEmpty(Payload))
                {
                    Payload = "";
                }

                var dataToSend = Encoding.UTF8.GetBytes(Payload);

                request.ContentLength = dataToSend.Length;

                request.GetRequestStream().Write(dataToSend, 0, dataToSend.Length);
            }

            SecurityProtocolType oldSecurityProtocol = System.Net.ServicePointManager.SecurityProtocol;

            try
            {
                if (_forceTls2)
                {
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                }

                using (response = (HttpWebResponse)request.GetResponse())
                {
                    using (Stream responseStream = response.GetResponseStream())
                    {
                        using (StreamReader readStream = new StreamReader(responseStream, Encoding.UTF8))
                        {
                            result = readStream.ReadToEnd();
                        }
                    }

                    if (response != null)
                    {
                        LastStatus = ((Int32)response.StatusCode).ToString();
                    }
                }
            }

            catch (WebException ex)
            {
                LastStatus = ex.ToString();
            }

            if (_forceTls2)
            {
                System.Net.ServicePointManager.SecurityProtocol = oldSecurityProtocol;
            }

            return result;
        }

        #endregion
    }
}
