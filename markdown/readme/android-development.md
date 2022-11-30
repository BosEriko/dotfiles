# Android Development
Before installing anything on WSL you must first install [Android Studio](https://developer.android.com/studio) on windows itself. After you're done installing Android Studio on windows you can now install the dependencies needed on WSL.
## Install Android CLI
```
cd $STORAGE
sudo apt update
sudo apt install -y unzip
sudo apt install -y zip
# The download link below is based on the "Command line tools only" inside https://developer.android.com/studio
wget -O android-cli.zip https://dl.google.com/android/repository/commandlinetools-linux-9123335_latest.zip
unzip android-cli.zip -d Android
rm android-cli.zip
```
## Update the paths accordingly
Be sure to update the paths inside [java.z.sh](../../zsh/java.z.sh) accordingly as well.
