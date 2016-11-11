#!/bin/sh

defaults write /Library/Preferences/com.oracle.java.Java-Updater JavaAutoUpdateEnabled -bool false

rm -rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Resources/Java\ Updater.app 
