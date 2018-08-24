
. config.sh

msbuild /t:clean $APP_DROID_DIR

# In some projects (Droid and PCL) we can delete the bin and obj directories,
# but in some (Droid and netstandard) we must NOT delete the obj directories, because it contains the 'nuget restore' files.

# rm -rf $APP_DROID_DIR/bin
# rm -rf $APP_DROID_DIR/obj

# rm -rf $PCL_DIR/bin
# rm -rf $PCL_DIR/obj
