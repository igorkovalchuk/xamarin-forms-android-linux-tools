
# xbuild - build entire project

DATE1=$(date)

. config.sh
# /t:SignAndroidPackage 
xbuild /p:Configuration="Release" /p:AndroidBuildApplicationPackage=true /p:AndroidSdkDirectory=$ANDROID_SDK $APP_DROID_CSPROJ

echo $DATE1
date
echo xbuild Release $APP_DROID_DIR

