dotnet publish SQribe/sqribe.csproj -c Release -r win10-x64
robocopy SQribe/scripts SQribe/bin/Release/net5.0/win10-x64/publish/scripts/ /E
robocopy SQribe/templates SQribe/bin/Release/net5.0/win10-x64/publish/templates /E
copy SQribe\HELP.txt SQribe\bin\Release\net5.0\win10-x64\publish\HELP.txt
copy SQribe\backup-defaults.json SQribe\bin\Release\net5.0\win10-x64\publish\backup-defaults.json
copy SQribe\restore-defaults.json SQribe\bin\Release\net5.0\win10-x64\publish\restore-defaults.json
