#!/usr/bin/env sh

# Install Flutter (https://flutter.dev/docs/get-started/install/macos)
git clone https://github.com/flutter/flutter.git -b stable ~/.flutterio
flutter precache
echo "Run `flutter doctor` to see if there are any dependencies you need to install to complete the setup"
terminal-notifier -title 'Installing' -message 'Flutter has been installed.'

