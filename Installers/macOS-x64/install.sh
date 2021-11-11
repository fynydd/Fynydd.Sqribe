#!/bin/bash
echo ">>> Create SQribe application folder..."
[[ -d /Applications/SQribe ]] || sudo mkdir /Applications/SQribe
echo ">>> Copy SQribe files..."
sudo rsync -avPz --delete-before publish/ /Applications/SQribe
echo ">>> Add SQribe to system path..."
echo "/Applications/SQribe" >> SQribe.public
sudo cp SQribe.public /private/etc/paths.d/SQribe.public
rm -rf SQribe.public
echo ">>> SUCCESS!"
echo ">>> Restart your terminal to begin using SQribe"
