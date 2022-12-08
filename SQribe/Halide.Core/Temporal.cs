using System;
using System.Diagnostics;

namespace SQribe.Halide.Core;

/// <summary>
/// Enumeration used in the DateDiff method to specify what date/time increment to use.
/// </summary>
public enum DateDiffComparisonType
{
	/// <summary>
	/// Minutes (fractional).
	/// </summary>
	Minutes,

	/// <summary>
	/// Hours (fractional).
	/// </summary>
	Hours,

	/// <summary>
	/// Seconds (fractional).
	/// </summary>
	Seconds,

	/// <summary>
	/// CPU ticks (fractional).
	/// </summary>
	Ticks,

	/// <summary>
	/// Milliseconds (fractional).
	/// </summary>
	Milliseconds,

	/// <summary>
	/// Years (fractional).
	/// </summary>
	Years,

	/// <summary>
	/// Quarters (fractional).
	/// </summary>
	Quarters,

	/// <summary>
	/// Days (fractional).
	/// </summary>
	Days,

	/// <summary>
	/// Months (fractional).
	/// </summary>
	Months,

	/// <summary>
	/// Days (whole number; ignores time).
	/// Result is exclusive (e.g. 1/1/2008 and 1/7/2008 returns 6).
	/// </summary>
	DaysWhole,

	/// <summary>
	/// Age in Years (whole number, takes leap year into account, many options - see CalculateAge for more details).
	/// Takes Leap Year into account: with a 2/29/2000 birthday, if today is 2/28/2011 age is 10, if today is 3/1/2011 age is 11.
	/// </summary>
	Age
}

/// <summary>
/// The TemporalHelpers class contains methods and properties for manipulating, 
/// evaluating, or displaying dates and times.
/// </summary>
public static class Temporal
{
	#region DateTime Features

	/// <summary>
	/// Get the Ticks of a DateTime, with the last 4 digits zeroed out;
	/// Usefule for matching datetimeprecision in JSON serialization
	/// </summary>
	/// <param name="dateTimeOffset"></param>
	/// <returns></returns>
	public static long TicksRounded(this DateTime dateTime)
	{
		var epoch = DateTime.MinValue.Ticks;
		var ticks = dateTime.Ticks;
		var diff = (ticks - epoch) / 10000L;
		
		return (diff * 10000L) + epoch;
	}

	/// <summary>
	/// Get the UTC Ticks of a DateTimeOffset, with the last 4 digits zeroed out;
	/// Usefule for matching datetimeprecision in JSON serialization
	/// </summary>
	/// <param name="dateTimeOffset"></param>
	/// <returns></returns>
	public static long UtcTicksRounded(this DateTimeOffset dateTimeOffset)
	{
		var epoch = DateTimeOffset.MinValue.UtcTicks;
		var ticks = dateTimeOffset.UtcTicks;
		var diff = (ticks - epoch) / 10000L;
		
		return (diff * 10000L) + epoch;
	}

	/// <summary>
	/// Calculate an age with a given birthdate. Assumes current timezone.
	/// </summary>
	/// <param name="dob">A <see cref="DateTime" /> value representing a birth date./></param>
	/// <returns>Age in years as an integer</returns>
	public static int CalculateAge(this DateTime dob)
	{
		return CalculateAge(dob, DateTime.UtcNow);
	}

    /// <summary>
    /// Calculate an age with a given birthdate.
    /// </summary>
    /// <param name="dob">A <see cref="DateTime" /> value representing a birthday./></param>
    /// <param name="dod">A <see cref="DateTime" /> value representing date of death./></param>
    /// <param name="utcOffset">An <see cref="int"/> value indicating the offset to apply to UTC</param>
    /// <returns>Age in years as an integer</returns>
    public static int CalculateAge(this DateTime dob, DateTime? dod)
    {
		dod ??= DateTime.Now;

		return Convert.ToInt32(Math.Truncate(DateDiff<double>(dob, dod.Value, DateDiffComparisonType.Age)));
	}

	/// <summary>
	/// Compares 2 dates and determine the time interval between them (uses time zones).
	/// </summary>
	/// <example>
	/// For example, if using "age" for comparison, startDate = "2000-02-29 00:00:00.000", and endDate = "2010-2-28 23:30:00:00.000",
	/// and the startDate timezone is CST the return value is 9.
	/// </example>
	/// <param name="howToCompare">String specifying compare type</param>
	/// <param name="startDate">First date for comparison. If earlier than endDate, a positive result is returned</param>
	/// <param name="endDate">Last date for comparison. If later than startDate, a positive result is returned</param>
	/// <returns></returns>
	public static T DateDiff<T>(this DateTime startDate, DateTime endDate, DateDiffComparisonType howToCompare)
	{
		double diff;

		try
		{
			// ReSharper disable once SwitchStatementHandlesSomeKnownEnumValuesWithDefault
			switch (howToCompare)
			{
				case DateDiffComparisonType.DaysWhole:
				{
					var sd = startDate.Date;
					var ed = endDate.Date;
					var ts = new TimeSpan(ed.Ticks - sd.Ticks);

					diff = Convert.ToDouble(ts.TotalDays);
					break;
				}
				case DateDiffComparisonType.Age:
				{
					var age = endDate.Year - startDate.Year;    //people perceive their age in years

					if (endDate.Month < startDate.Month || ((endDate.Month == startDate.Month) && (endDate.Day < startDate.Day)))
						age--;  //birthday in current year not yet reached, so we are 1 year younger
						//note that this structure explicitly places March 1st as the non-leap year birthday for those born on Feb 29th.

					diff = Convert.ToDouble(age);
					break;
				}
				default:
				{
					var ts = new TimeSpan(endDate.Ticks - startDate.Ticks);

					#region Fractional conversion options

					diff = howToCompare switch
					{
						DateDiffComparisonType.Minutes => Convert.ToDouble(ts.TotalMinutes),
						DateDiffComparisonType.Hours => Convert.ToDouble(ts.TotalHours),
						DateDiffComparisonType.Seconds => Convert.ToDouble(ts.TotalSeconds),
						DateDiffComparisonType.Ticks => Convert.ToDouble(ts.Ticks),
						DateDiffComparisonType.Milliseconds => Convert.ToDouble(ts.TotalMilliseconds),
						DateDiffComparisonType.Months => Convert.ToDouble(ts.TotalDays / 30.438),
						DateDiffComparisonType.Years => Convert.ToDouble(ts.TotalDays / 365.255),
						DateDiffComparisonType.Quarters
							=> //TO DO: not use a calculation, but instead use Jan 1, Apr 1, July 1, Oct 1 to determine current quarter of this year (and how many quarters of the initial year) and add the remaining years as 4 quarters each
							Convert.ToDouble((ts.TotalDays / 365.255) / 4),
						_ => Convert.ToDouble(ts.TotalDays)
					};

					#endregion

					break;
				}
			}
		}

		catch
		{
			diff = -1;
		}

		return (T)Convert.ChangeType(diff, typeof(T));
	}

	/// <summary>
	/// Convert a DateTime value to a given time zone, automatically handling DST.
	/// </summary>
	/// <param name="dateTime">DateTime value to convert</param>
	/// <param name="timeZoneText">Text value of the desired time zone. Examples include "Eastern Standard Time", "Central Standard Time", "Mountain Standard Time", "Pacific Standard Time"</param>
	/// <returns>dateTime converted to the desired time zone.</returns>
	public static DateTime ConvertDateToTimeZone(this DateTime dateTime, string timeZoneText)
	{
		var destinationTimeZone = TimeZoneInfo.FindSystemTimeZoneById(timeZoneText);

		if (destinationTimeZone.Id == TimeZoneInfo.Local.Id)
			return dateTime;

		return dateTime.Kind == DateTimeKind.Utc ? TimeZoneInfo.ConvertTimeFromUtc(dateTime, destinationTimeZone) : TimeZoneInfo.ConvertTime(dateTime, destinationTimeZone);
	}

    #endregion

    #region Timers

	/// <summary>
    /// Given a total count of tasks, the current task completion count, and the elapsed time in seconds,
    /// return a Timespan ETA for completion.
    /// </summary>
    /// <param name="currentSeconds"></param>
    /// <param name="totalItemCount"></param>
    /// <param name="currentItemCount"></param>
    /// <returns></returns>
	public static TimeSpan GetEta(double currentSeconds, double totalItemCount, double currentItemCount)
	{
		var eta = ((totalItemCount / currentItemCount) * currentSeconds) - currentSeconds;
		var time = TimeSpan.FromSeconds(eta);

		return time;
	}

	/// <summary>
    /// Given a total count of tasks, the current task completion count, and the elapsed time in seconds,
    /// return a Timespan ETA for completion.
    /// </summary>
    /// <param name="timer"></param>
    /// <param name="totalItemCount"></param>
    /// <param name="currentItemCount"></param>
    /// <returns></returns>
	public static TimeSpan GetEta(Stopwatch timer, double totalItemCount, double currentItemCount)
	{
		var elapsed = timer.ElapsedMilliseconds;
		var eta = ((totalItemCount / currentItemCount) * elapsed) - elapsed;
		var time = TimeSpan.FromMilliseconds(eta);

		return time;
	}

	#endregion
}

/// <summary>
/// Accurate, Simple, and Easy to use Stopwatch Class. This class
/// can be used to track process execution time in seconds and milliseconds.
/// </summary>
/// <example>
/// Sample usage:
/// <code>
/// <![CDATA[
/// StopWatch sw = new StopWatch();
/// sw.Start();
/// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
/// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
/// sw.Stop()
/// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
/// ]]>
/// </code>
/// </example>
public class StopWatch
{
	#region Properties

	public DateTime StartDate { get; set; }

	public DateTime StopDate { get; set; }

	#endregion

	#region Constructors

	/// <summary>
	/// Initializes the StopWatch to 0.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch sw = new StopWatch();
	/// sw.Start();
	/// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
	/// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
	/// sw.Stop()
	/// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
	/// ]]>
	/// </code>
	/// </example>
	public StopWatch()
	{
		Reset();
	}

	/// <summary>
	/// Initializes the StopWatch with a starting time.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch sw = new StopWatch(DateTime.Now);
	/// sw.Start();
	/// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
	/// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
	/// sw.Stop()
	/// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
	/// ]]>
	/// </code>
	/// </example>
	public StopWatch(DateTime startDate)
	{
		Reset();

		StartDate = startDate;
	}

	#endregion

	/// <summary>
	/// Starts the Stopwatch.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// stopwatch.Stop();
	/// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetSeconds()");
	/// ]]>
	/// </code>
	/// </example>
	public void Start()
	{
		StartDate = DateTime.Now;
	}

	/// <summary>
	/// Stops the Stopwatch.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// stopwatch.Stop();
	/// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetSeconds()");
	/// ]]>
	/// </code>
	/// </example>
	public void Stop()
	{
		StopDate = DateTime.Now;
	}

	/// <summary>
	/// Reset the Stopwatch to 0.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// stopwatch.Stop();
	/// stopwatch.Reset();
	/// Assert.AreEqual(0, stopwatch.GetSeconds<int>(), "GetSeconds()");
	/// ]]>
	/// </code>
	/// </example>
	public void Reset()
	{
		StartDate = DateTime.Now;
		StopDate = StartDate;
	}

	/// <summary>
	/// Returns the elapsed time in milliseconds since the StopWatch was started.
	/// If the stopwatch has been stopped, the returned time will always be the same,
	/// otherwise it will continue to increase.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// Assert.AreEqual(2000, stopwatch.GetTime<int>(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// stopwatch.Stop();
	/// Assert.AreEqual(3000, stopwatch.GetTime<int>(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// Assert.AreEqual(3000, stopwatch.GetTime<int>(), "GetTime()");
	/// ]]>
	/// </code>
	/// </example>
	/// <returns>Milliseconds since the stopwatch was started.</returns>
	public T GetTime<T>()
	{
		double Elapsed = 0;

		if (StartDate.Ticks < StopDate.Ticks)
		{
			Elapsed = TimeSpan.FromTicks(StopDate.Ticks - StartDate.Ticks).TotalMilliseconds;
		}

		else
		{
			Elapsed = TimeSpan.FromTicks(DateTime.Now.Ticks - StartDate.Ticks).TotalMilliseconds;
		}

		return (T) (Convert.ChangeType(Elapsed, typeof(T)));
	}

	/// <summary>
	/// Returns the elapsed time in milliseconds since the StopWatch was started.
	/// If the stopwatch has been stopped, the returned time will always be the same,
	/// otherwise it will continue to increase.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// Assert.AreEqual("2000", stopwatch.GetTime(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// stopwatch.Stop();
	/// Assert.AreEqual("3000", stopwatch.GetTime(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// Assert.AreEqual("3000", stopwatch.GetTime(), "GetTime()");
	/// ]]>
	/// </code>
	/// </example>
	/// <returns>Milliseconds since the stopwatch was started.</returns>
	public string GetTime()
	{
		return GetTime<string>();
	}

	/// <summary>
	/// Returns the elapsed time in seconds since the StopWatch was started.
	/// If the stopwatch has been stopped, the returned time will always be the same,
	/// otherwise it will continue to increase.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// <![CDATA[
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// stopwatch.Stop();
	/// Assert.AreEqual(3, stopwatch.GetSeconds<int>(), "GetTime()");
	/// Temporal.PauseExecution(1000);
	/// Assert.AreEqual(3, stopwatch.GetSeconds<int>(), "GetTime()");
	/// ]]>
	/// </code>
	/// </example>
	/// <returns>Seconds since the stopwatch was started.</returns>
	public T GetSeconds<T>()
	{
		var seconds = GetTime<double>() / 1000;

		return (T) (Convert.ChangeType(seconds, typeof(T)));
	}

	/// <summary>
	/// Returns the elapsed time as a TimeSPan object.
	/// If the stopwatch has been stopped, the returned TimeSpan will always be the same,
	/// otherwise it will continue to increase.
	/// </summary>
	/// <example>
	/// Sample usage:
	/// <code>
	/// StopWatch stopwatch = new StopWatch();
	/// stopwatch.Start();
	/// Temporal.PauseExecution(2000);
	/// stopwatch.Stop();
	/// Assert.AreEqual("00:00:02", stopwatch.GetTimeSpan().ToString(@"hh\:mm\:ss"), "GetTimeSpan() 2 seconds");
	/// </code>
	/// </example>
	/// <returns>TimeSpan value of the elapsed time.</returns>
	public TimeSpan GetTimeSpan()
	{
		return TimeSpan.FromMilliseconds(GetTime<double>());
	}

	/// <summary>
	/// Format the elapsed time as a more friendly time span with a custom delimitter.
	/// Like: 3d : 5h : 12m : 15s or 3d+5h+12m+15s
	/// </summary>
	/// <param name="delimitter">Text to separate time elements; defaults to " : ".</param>
	/// <returns>Formatted timespan</returns>
	public string FormatTimer(string delimitter = " : ")
	{
		var result = "0s";
		var timespan = GetTimeSpan();

		if (timespan.TotalSeconds > 0)
		{
			result = (int) timespan.TotalSeconds + "s";

			if (timespan.TotalSeconds >= 60)
			{
				result = timespan.Minutes + "m" + delimitter + timespan.Seconds + "s";

				if (timespan.Hours > 0)
				{
					result = timespan.Hours + "h" + delimitter + timespan.Minutes + "m" + delimitter + timespan.Seconds + "s";
				}

				if (timespan.Days > 0)
				{
					result = timespan.Days + "d" + delimitter + timespan.Hours + "h" + delimitter +	timespan.Minutes + "m" + delimitter + timespan.Seconds + "s";
				}
			}
		}

		return result;
	}
}
