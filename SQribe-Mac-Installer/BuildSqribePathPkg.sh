#!/bin/bash
mkdir -p SQribePathInstaller/payload
cd SQribePathInstaller
echo "/Applications/SQribe" >> payload/SQribe.public
pkgbuild --root payload --install-location /private/etc/paths.d --version 1.0 --identifier app.sqribe.path ../SQribePath.pkg
echo "Cleaning up..."
cd ..
rm -rf SQribePathInstaller
echo "DONE"
