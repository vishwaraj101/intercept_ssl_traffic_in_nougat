#!/bin/bash
echo "Enter your burp crt name <cacert.der>"
read crt_name
openssl x509 -inform DER -in $crt_name -out cacert.pem
openssl x509 -inform PEM -subject_hash_old -in cacert.pem |head -1
echo "Enter the hash"
read hash_val
hash_crt="$hash_val.0"
mv cacert.pem $hash_crt 
adb root
adb remount
adb push $hash_crt /sdcard/
adb shell mv /sdcard/$hash_crt /system/etc/security/cacerts/
echo "Crt Placed in SystemCAs"
adb shell chmod 644 /system/etc/security/cacerts/$hash_crt
adb shell reboot
echo "Installed and rebooting the device..."
echo "Watch your burp proxy now \m/"

