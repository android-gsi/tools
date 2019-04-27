#!bin/bash

# Usage
# download_platform_tools.sh  version os
# - version should be in format of
#      major.minor.build  as 28.0.0
#   version numbers could be found at https://developer.android.com/studio/releases/platform-tools.html
# - os should be one of (linux, darwin, windows )
#
# functionality:
#   simply construct the download link similar to
#      https://dl.google.com/android/repository/platform-tools_r28.0.2-darwin.zip
#   download it to $pwd

ver_str=r$1
os_name=$2
target_string=https://dl.google.com/android/repository/platform-tools_${ver_str}-${os_name}.zip

curl -O $target_string

