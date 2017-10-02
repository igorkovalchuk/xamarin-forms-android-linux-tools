
APP_PACKAGE=com.company_name.my_application_package
APP_ACTIVITY=md5_hash_from_compiled_manifest.MyMainActivity

APP_NAME=MyApplicationName

APP_DIR=/home/my_directory/MyApplicationName

APP_DROID_DIR=$APP_DIR/Droid
APP_DROID_CSPROJ=$APP_DROID_DIR/$APP_NAME.Droid.csproj
APP_DROID_PREFIX=$APP_DROID_DIR/bin/Debug/$APP_NAME

# if you have only one PCL it is usually the same as APP_NAME
# if you have several PCL libraries,
# then you will need to create additional sets of the variables or create config_pcl.sh;
# for example, PCL3_NAME, PCL3_DIR, PCL3_CSRPOJ, PCL3_PREFIX.

PCL_NAME=MyPCL1Name

PCL_DIR=$APP_DIR/$PCL_NAME
PCL_CSPROJ=$PCL_DIR/$PCL_NAME.csproj
PCL_PREFIX=$PCL_DIR/bin/Debug/$PCL_NAME

ANDROID_OVERRIDE_DIR=/data/data/$APP_PACKAGE/files/.__override__

VSCODE_DIR=/my_vscode_directory/VSCode-linux-x64

ANDROID_SDK=~/java/sdk

AVD_NAME=Nexus_S_API_19

XAMARIN_ANDROID_DIR=/my_xamarin_android_files_dir
