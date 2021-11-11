echo ""
echo "Making SQribe executable and modifying your system \$PATH..."
sudo chmod +x /usr/bin/sqribe/sqribe
sed -i -z "s/export PATH=\$PATH:\/usr\/bin\/sqribe\n//" ~/.bashrc
echo "export PATH=\$PATH:/usr/bin/sqribe" >> ~/.bashrc
export PATH=$PATH:/usr/bin/sqribe
echo "DONE!"
echo ""
