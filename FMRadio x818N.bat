::copy C:\Users\Ken\Desktop\S359_APP\TpvStyleTest.apk .\TpvStyleTest.apk
@echo off
set key_path=F:\SignApk\Keys\x818_security\platform
echo on
java -jar signapk.jar %key_path%.x509.pem %key_path%.pk8 FMRadio.apk FMRadio_sign.apk

::adb install -r FMRadio_sign.apk
pause
