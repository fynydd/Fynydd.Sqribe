dotnet publish SQribe/sqribe.csproj -c Release -r linux-x64
cp -r SQribe/scripts SQribe/bin/Release/net5.0/linux-x64/publish/
cp -r SQribe/templates SQribe/bin/Release/net5.0/linux-x64/publish/
cp SQribe/HELP.txt SQribe/bin/Release/net5.0/linux-x64/publish/
cp SQribe/backup-defaults.json SQribe/bin/Release/net5.0/linux-x64/publish/
cp SQribe/restore-defaults.json SQribe/bin/Release/net5.0/linux-x64/publish/
cp linux-install.sh SQribe/bin/Release/net5.0/linux-x64/publish/
