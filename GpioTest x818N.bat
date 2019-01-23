copy F:\datab\gpioTest\app\build\outputs\apk\debug\app-debug.apk .\GpioTest.apk
@echo off
set key_path=F:\SignApk\Keys\x818N_security\platform
echo on
java -jar signapk.jar %key_path%.x509.pem %key_path%.pk8 GpioTest.apk GpioTest_sign.apk

::adb install -r GpioTest_sign.apk
pause
