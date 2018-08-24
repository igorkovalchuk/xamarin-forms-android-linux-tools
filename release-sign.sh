
. config.sh

# If you set AndroidCreatePackagePerAbi = true
# it doesn't sign bin/Release/$APP_PACKAGE-x86-Signed.apk and other apk by default,
# so we must sign it manually.

# https://developer.android.com/studio/command-line/apksigner

# Please use your own values here, your password instead of "android", etc.
$ANDROID_SDK/build-tools/27.0.2/apksigner sign --ks ~/".local/share/Xamarin/Mono for Android/debug.keystore" --ks-pass pass:android --ks-key-alias androiddebugkey --key-pass pass:android --min-sdk-version 21 --max-sdk-version 27 $APP_DROID_DIR/bin/Release/$APP_PACKAGE-x86-Signed.apk

# Alternative syntax (with the same parameters) is:
# $JAVA_HOME/bin/java -jar $ANDROID_SDK/build-tools/27.0.3/lib/apksigner.jar 
