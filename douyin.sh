#!/bin/zsh
adb shell am force-stop com.ss.android.ugc.aweme

adb shell am start com.ss.android.ugc.aweme/.splash.SplashActivity

sleep 1
#adb logcat | grep "TAGGGGGGGGGGGGGGGGGGGG"
./exp.py