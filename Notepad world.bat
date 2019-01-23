::copy C:\Users\Ken\Desktop\S359_APP\TpvStyleTest.apk .\TpvStyleTest.apk
@echo off
set key_path=F:\tpv_dev_syn\SignApk\Keys\OutWaterWorld\platform
echo on
java -jar signapk.jar %key_path%.x509.pem %key_path%.pk8 Notepad.apk Notepad_sign.apk

::adb install -r Notepad_sign.apk
pause