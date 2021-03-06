
# Warning: use it at your own risk. If this works for me, it may not work for your environment. This process can take a lot of time.

https://xamarin-forms-linux.blogspot.com/

# xamarin-forms-android-linux-tools
Collection of command line tools for Xamarin.Forms Android on Linux and documentation to configure the build process.

## Documentation

https://goo.gl/mQvTJk (Google Docs)

## Updates

Updates and more/previous details about this experiment: https://xamarin-forms-linux.blogspot.com/

## Command line tools

Please modify the config*.sh files first.

Use build.sh to build the entire Android application.

Use deploy.sh to copy the apk on Android emulator and run the application.

Use fast.sh to build the PCL and run the application (takes nearly 4-5 seconds on i5-2520M CPU).

NEW: use android-dll-fast.sh to build the Droid dll and run the application (first time it takes nearly 10 seconds, after that - 5 seconds).

NEW: clean.sh

NEW: xbuild.sh and xfast.sh - use it instead of build.sh and fast.sh where it fails with Net Standard libraries;

NEW: utils_debug_flag.sh - to see the number of a line (in logcat) if you have an Exception;

Use localize-app.sh to create the AppResources.designer.cs class file.

localize-base.sh is an example how to compile the second resx, for example, BaseResources.resx to the class file.

NEW: release-build.sh (msbuild based Release build)

NEW: release-sign.sh - it is necessary when AndroidCreatePackagePerAbi = true

NEW: release-deploy.sh

NEW: xrelease-build.sh (warning: some projects do not work with xbuild)

NEW: xandroid-dll-fast.sh (warning: it can broke the UI - it removes the toolbar)

## Updated fast.sh for new versions of Xamarin.Forms and Android:

`ANDROID_OVERRIDE_DIR=/data/user/0/com.example.sampleresources/files/.__override__`

https://github.com/igorkovalchuk/xamarin-forms-android-linux-project-templates/blob/master/template-4.3.0.851321-pre3/fast.sh
