@ECHO OFF

echo Add auto updater custom task
echo read more in README.md
echo.
echo Execute in elevated command prompt!
echo -------------------------------------------------
echo.

cd /D "%~dp0"
::SCHTASKS /CREATE /SC DAILY /TN "IndetectablesToolkit_Updater" /TR "%cd%\custom-task-loader.bat" /ST 14:00
SCHTASKS /CREATE /SC WEEKLY /TN "IndetectablesToolkit_Updater" /TR "%cd%\custom-task-loader.bat"
pause
