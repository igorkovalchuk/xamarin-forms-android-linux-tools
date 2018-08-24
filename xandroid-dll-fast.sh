
DATE1=$(date)

. config.sh

$ANDROID_SDK/platform-tools/adb shell am force-stop $APP_PACKAGE &
# $ANDROID_SDK/platform-tools/adb shell am kill $APP_PACKAGE &

xbuild /p:AndroidApplication=false $APP_DROID_CSPROJ

$ANDROID_SDK/platform-tools/adb shell rm $ANDROID_OVERRIDE_DIR/*
$ANDROID_SDK/platform-tools/adb push $APP_DROID_PREFIX.Droid.dll $ANDROID_OVERRIDE_DIR
$ANDROID_SDK/platform-tools/adb push $APP_DROID_PREFIX.Droid.pdb $ANDROID_OVERRIDE_DIR

# We may push the PCL also, because sometimes we change both - PCL and Droid code and we delete the override dir every time;
# Add here all PCLs that you are changing right now.
$ANDROID_SDK/platform-tools/adb push $APP_DROID_PREFIX.dll $ANDROID_OVERRIDE_DIR
$ANDROID_SDK/platform-tools/adb push $APP_DROID_PREFIX.pdb $ANDROID_OVERRIDE_DIR

echo $DATE1
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY
date
