
# =================================================================================== [Java] ===== #

export ANDROID_HOME=/home/boseriko/Android/cmdline-tools/latest
export ANDROID_SDK_ROOT=/home/boseriko/Android

PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
PATH=$PATH:$ANDROID_HOME/bin

JAVA_HOME=$(dirname $( readlink -f $(which java) ))
JAVA_HOME=$(realpath "$JAVA_HOME"/../)
export JAVA_HOME
