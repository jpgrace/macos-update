#! /bin/bash

sudo launchctl unload /Library/LaunchDaemons/com.personal.macos.update.plist
sudo launchctl load /Library/LaunchDaemons/com.personal.macos.update.plist
