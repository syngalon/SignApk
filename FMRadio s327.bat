::copy C:\Users\Ken\Desktop\S359_APP\TpvStyleTest.apk .\TpvStyleTest.apk
@echo off
set key_path=F:\tpv_dev_syn\SignApk\Keys\s327\platform
echo on
java -jar signapk.jar %key_path%.x509.pem %key_path%.pk8 FMRadio.apk FMRadio_sign_s327.apk

::adb install -r FMRadio_sign_s327.apk
pause