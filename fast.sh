DATE1=$(date)

. config.sh

$ANDROID_SDK/platform-tools/adb shell am force-stop $APP_PACKAGE &
# $ANDROID_SDK/platform-tools/adb shell am kill $APP_PACKAGE &
msbuild $PCL_DIR
$ANDROID_SDK/platform-tools/adb shell rm $ANDROID_OVERRIDE_DIR/*
$ANDROID_SDK/platform-tools/adb push $PCL_PREFIX.dll $ANDROID_OVERRIDE_DIR
$ANDROID_SDK/platform-tools/adb push $PCL_PREFIX.pdb $ANDROID_OVERRIDE_DIR
echo $DATE1
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY
date
