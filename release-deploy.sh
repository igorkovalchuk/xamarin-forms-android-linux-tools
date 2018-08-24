
DATE1=$(date)

# Run application (transfer the apk file to the device and run it)

# If you set AndroidCreatePackagePerAbi = true
# pease specify the concrete apk, for example $APP_PACKAGE-x86-Signed.apk

. config.sh

$ANDROID_SDK/platform-tools/adb shell rm /data/data/$APP_PACKAGE/files/.__override__/*

$ANDROID_SDK/platform-tools/adb install -r $APP_DROID_DIR/bin/Release/$APP_PACKAGE-Signed.apk
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY

echo $DATE1
date
