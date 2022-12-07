dotnet publish SQribe/sqribe.csproj -p:PublishSingleFile=true -c Release -r osx-x64 --self-contained
cp -r SQribe/scripts SQribe/bin/Release/net7.0/osx-x64/publish/
cp -r SQribe/templates SQribe/bin/Release/net7.0/osx-x64/publish/
cp SQribe/HELP.txt SQribe/bin/Release/net7.0/osx-x64/publish/
cp SQribe/backup-defaults.json SQribe/bin/Release/net7.0/osx-x64/publish/
cp SQribe/restore-defaults.json SQribe/bin/Release/net7.0/osx-x64/publish/
