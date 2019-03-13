@ECHO OFF
IF "%1"=="start" (
    ECHO starting your application 
    start "RetailStoreService" java -jar retail-store-service-1.0.0-RELEASE.jar
) ELSE IF "%1"=="stop" (
    ECHO stop your app
    TASKKILL /FI "WINDOWTITLE eq RetailStoreService"
) ELSE (
    ECHO please, use "run.bat start" or "run.bat stop"
)
:end