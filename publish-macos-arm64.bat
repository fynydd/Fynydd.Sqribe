dotnet publish SQribe/sqribe.csproj -p:PublishSingleFile=true -c Release -r osx-arm64 --self-contained
robocopy SQribe/scripts SQribe/bin/Release/net9.0/osx-arm64/publish/scripts/ /E
robocopy SQribe/templates SQribe/bin/Release/net9.0/osx-arm64/publish/templates /E
copy SQribe\HELP.txt SQribe\bin\Release\net9.0\osx-x64\publish\HELP.txt
copy SQribe\backup-defaults.json SQribe\bin\Release\net9.0\osx-x64\publish\backup-defaults.json
copy SQribe\restore-defaults.json SQribe\bin\Release\net9.0\osx-x64\publish\restore-defaults.json
