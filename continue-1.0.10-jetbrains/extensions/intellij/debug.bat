

@echo off
set "source=../../gui/dist"
set "destination=src/main/resources/webview"

echo "%source%"
echo "%destination%"

robocopy "%source%" "%destination%" /MIR /COPYALL /IS /IT /R:1 /W:1

echo finished

call ./gradlew.bat runIdeForUiTests

pause
