@echo off
echo -------------------------------------------------------------------------
echo deploying rampart...
echo -------------------------------------------------------------------------

xcopy .\include %WSFC_HOME%\include /E /I /Y /S
xcopy .\lib %WSFC_HOME%\lib /E /I /Y /S
xcopy .\modules %WSFC_HOME%\modules /E /I /Y /S
xcopy .\samples %WSFC_HOME%\samples /E /I /Y /S
xcopy .\services %WSFC_HOME%\services /E /I /Y /S
copy .\samples\src\rampartc\data\server_axis2.xml %WSFC_HOME%\axis2.xml

echo -------------------------------------------------------------------------
echo Rampart deployed
echo -------------------------------------------------------------------------
@echo on
