dotnet publish SQribe/sqribe.csproj -c Release -r osx-x64
cp -r SQribe/scripts SQribe/bin/Release/net5.0/osx-x64/publish/
cp -r SQribe/templates SQribe/bin/Release/net5.0/osx-x64/publish/
cp SQribe/HELP.txt SQribe/bin/Release/net5.0/osx-x64/publish/
cp SQribe/backup-defaults.json SQribe/bin/Release/net5.0/osx-x64/publish/
cp SQribe/restore-defaults.json SQribe/bin/Release/net5.0/osx-x64/publish/
