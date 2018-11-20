### Requirements:
Adb,Genymotion or a rooted device.

### Steps:
Export your burp certificate and place it in the same directory as of script

Now in terminal hit > sh nougat_traffic.sh

```
Enter your burp crt name <cacert.der>
>>> cacert.der

Enter the hash
>>> 9a5ba575

Now device will be rebooted and you will be able to see app traffic \m/
```
#### This won't work if the app has implemented any kind of ssl pinning.
