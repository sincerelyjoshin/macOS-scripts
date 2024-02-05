#!/bin/sh

/usr/bin/defaults write /Library/Preferences/com.oracle.java.Java-Updater JavaAutoUpdateEnabled -bool false

/bin/rm -rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Resources/Java\ Updater.app

exit 0
