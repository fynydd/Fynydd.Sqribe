call publish-linux-arm64.bat
call publish-linux-x64.bat
call publish-macos-arm64.bat
call publish-macos-x64.bat
call publish-windows-arm64.bat
call publish-windows-x64.bat

robocopy SQribe/bin/Release/net9.0/linux-arm64/publish Installers/Linux-Arm64/publish/ /E
robocopy SQribe/bin/Release/net9.0/linux-x64/publish Installers/Linux-x64/publish/ /E
robocopy SQribe/bin/Release/net9.0/osx-arm64/publish Installers/macOS-Arm64/publish/ /E
robocopy SQribe/bin/Release/net9.0/osx-x64/publish Installers/macOS-x64/publish/ /E
robocopy SQribe/bin/Release/net9.0/win-arm64/publish Installers/Windows-Arm64/publish/ /E
robocopy SQribe/bin/Release/net9.0/win-x64/publish Installers/Windows-x64/publish/ /E
