
# msbuild - build entire project

DATE1=$(date)

. config.sh

msbuild /p:Configuration="Release" /p:AndroidBuildApplicationPackage=true /p:AndroidSdkDirectory=$ANDROID_SDK $APP_DROID_DIR

echo $DATE1
date

echo msbuild $APP_DROID_DIR

# beep -f 200
# beep -f 400
# beep -f 500
