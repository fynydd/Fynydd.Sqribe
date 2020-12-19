echo ""
echo "Removing SQribe from your system \$PATH..."
sed -i -z "s/export PATH=\$PATH:\/usr\/bin\/sqribe\n//" ~/.bashrc
echo "DONE! Will remove from your active path when you log out."
echo ""
