#!/bin/sh

# 转换平台签名命令
keytool-importkeypair -k x818N_key.jks -p 123456 -pk8 platform.pk8 -cert platform.x509.pem -alias x818N_key

# demo.jks : 签名文件
# 123456 : 签名文件密码
# platform.pk8、platform.x509.pem : 系统签名文件
# demo : 签名文件别名
