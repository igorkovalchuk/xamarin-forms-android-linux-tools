
# xbuild - build entire project

DATE1=$(date)

. config.sh

xbuild /p:AndroidBuildApplicationPackage=true /p:AndroidSdkDirectory=$ANDROID_SDK $APP_DROID_CSPROJ

echo $DATE1
date
echo xbuild $APP_DROID_DIR

