echo ""
echo "This script will make SQribe executable and add its path to your"
echo "environment so you can run 'sqribe' from anywhere."
echo ""
echo "First, copy the SQribe app folder to a location of your choice."
echo "Keep in mind that SQribe will create a folder named 'sqribe' in"
echo "your home folder. That's where the log is written and where you"
echo "should put your JSON job files. So name your app folder something"
echo "other than 'sqribe' if you plan on keeping it in your home folder."
echo "Second, in a terminal window. 'cd' into the app folder, then run"
echo "this bash script (e.g. 'sh linux-install.sh')"
echo ""
echo "Test your install in the terminal by running 'sqribe' from any"
echo "directory on your system."
echo ""
sudo chmod +x sqribe
echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
sqribe
