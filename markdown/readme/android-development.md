# Android Development
Before installing anything on WSL you must first install [Android Studio](https://developer.android.com/studio) on windows itself. After you're done installing Android Studio on windows you can now install the dependencies needed on WSL.
## Install Android CLI
Run the command below on WSL
```
cd ~
sudo apt update
sudo apt install -y unzip zip

# The download link below is based on the "Command line tools only" section inside https://developer.android.com/studio
wget -O android-cli.zip https://dl.google.com/android/repository/commandlinetools-linux-9123335_latest.zip
unzip android-cli.zip -d Android && rm android-cli.zip

# The following adjustment is based on the instruction inside https://developer.android.com/studio/command-line/sdkmanager
mkdir ~/Android/cmdline-tools/latest
mv ~/Android/cmdline-tools/NOTICE.txt ~/Android/cmdline-tools/latest
mv ~/Android/cmdline-tools/source.properties ~/Android/cmdline-tools/latest
mv ~/Android/cmdline-tools/bin ~/Android/cmdline-tools/latest
mv ~/Android/cmdline-tools/lib ~/Android/cmdline-tools/latest
```
## Install Java
Run the command below on WSL
```
cd ~
# The download link is in https://www.oracle.com/downloads/#category-java
wget -O jdk-19.deb https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb
sudo apt-get -qqy install ./jdk-19.deb
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1919
```
## Update the paths accordingly
Be sure to update the paths inside [java.z.sh](../../zsh/java.z.sh) and [android.z.sh](../../zsh/android.z.sh) accordingly as well.
Run the command below on WSL
## Install Platform Tools
```
sdkmanager platform-tools
```
## Check if both versions of ADB are similar
Run the command below on CMD
```
# The path below depends on where you have installed Android
cd C:\Users\Bos\AppData\Local\Android\Sdk\platform-tools
adb version
```
Run the command below on WSL
```
adb --version
```
Both versions inside Windows and WSL should match
## Start the ADB server on Windows
Run the command below on CMD and keep the window open while you're developing. This part is dependent on [adb.z.sh](../../zsh/adb.z.sh).
```
# The path below depends on where you have installed Android
cd C:\Users\Bos\AppData\Local\Android\Sdk\platform-tools
adb.exe -a -P 5037 nodaemon server
```
