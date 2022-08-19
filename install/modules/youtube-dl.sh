#!/usr/bin/env sh

# Download videos from youtube.com or other video platforms (https://github.com/ytdl-org/youtube-dl)
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
echo "Installing: YouTube DL has been installed."
