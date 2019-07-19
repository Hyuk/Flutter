# Flutter

## How to switch channels
* There are 4 channels in flutter, master, dev, beta and stable.
```bash
$ flutter channel stable
$ flutter channel master
$ flutter channel dev
$ flutter channel beta
```

## Flutter Check Tool
```bash
$ flutter doctor
```

## Splash Screen
* Android: Update launch_background.xml (android/app/src/main/res/drawable/launch_background.xml)
```xml
<?xml version="1.0" encoding="utf-8"?>
<!-- Modify this file to customize your launch splash screen -->
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@android:color/black" /> <!-- You can set background color of the splash screen -->

    <!-- You can insert your own image assets here -->
    <item>
        <bitmap
            android:gravity="center"
            android:src="@drawable/futurizr" /> <!-- you can add image file. please do not add extension of the image file, just add file name -->
    </item>
</layer-list>
```

## Useful Resources & Links
* [Official Flutter Docs](https://flutter.io/docs/)
* [macOS Setup Guide](https://flutter.io/setup-macos)
* [Windows Setup Guide](https://flutter.io/setup-windows)
* [Linux Setup Guide](https://flutter.io/setup-linux)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Visual Studio Code Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
* [Android Studio](https://developer.android.com/studio/)
* [Flutter Widget Dialog](https://flutter.io/docs/development/ui/widgets)
* [Google Sample Test Ad Unit ID](https://developers.google.com/admob/android/test-ads?hl=ko)
* [Flutter Fire](https://github.com/flutter/plugins/blob/master/FlutterFire.md)
* [Flutter Firebase Admob](https://pub.dev/packages/firebase_admob#-installing-tab-)
* [Support APKs with 32-bit and 64-bit binaries within them](https://github.com/flutter/flutter/issues/18494)
* [Flutter Inspector](https://flutter.dev/docs/development/tools/inspector)
* [Flutter Example Apps](https://github.com/iampawan/FlutterExampleApps)
* [Online Photoshop Free](https://www.freephototool.com/)
* [Launcher Icon Generator](https://jgilfelt.github.io/AndroidAssetStudio/icons-launcher.html)

## Android Launcher Icon Size
* LDPI : 36 x 36
* MDPI : 48 x 48
* HDPI : 72 x 72
* XHDPI : 96 x 96
* XXHDPI : 144 x 144
* XXXHDPI : 192 x 192.
* WEB : 512 x 512

## Android / iOS Icon & Splash Image Size

* LDPI : 36 x 36 px
* MDPI : 48 x 48 px
* HDPI : 72 x 72 px
* XHDPI : 96 x 96 px
* XXHDPI : 144 x 144 px
* XXXHDPI : 192 x 192 px
* Market : 512 x 512 px

* Android Splash Image Size
* LDPI : 200 x 320 px / 320 x 200 px
* MDPI : 320 x 480 px / 480 x 320 px
* HDPI : 480 x 800 px / 800 x 480 px
* XHDPI : 720 x 1280 px / 1280 x 720 px
* XXHDPI : 960 x 1600 px / 1600 x 960 px
* XXXHDPI : 1280 x 1920 px / 1920 x 1280 px

* iOS Splash Image Size
* iPad(1x - Non-Retina) 768 x 1024 px / 1024 x 768 px
* iPad(2x - Retina) 1536 x 2048 px / 2048 x 1536 px
* iPhone(1x - Non-Retina) 320 x 480 px / 480 x 320 px
* iPhone(2x - Retina) 640 x 960 px / 960 x 640 px
* iPhone5(2x - Retina) 640 x 1136 px / 1136 x 640 px
* iPhone6(2x) 750 x 1334 px / 1334 x 750 px
* iPhone6Plus(3x) 1242 x 2208 px / 2208 x 1242 px

## [Widgets]()

## Flutter Build APK Checklist
* Launcher Icon (Adaptive Icon)
    * Image Create: [Online Photoshop Free](https://www.freephototool.com/)
    * res -> new -> image asset

* Launcher Icon (Non-Adaptive Icon)
    * [App Icon Generator](https://appicon.co/#app-icon)
* Create a keystore
You can create the key in specific location as below
```bash
$ keytool -genkey -v -keystore D:/key/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```
* Create key.properties File under android folder
```properties
storePassword=password
keyPassword=password
keyAlias=key
storeFile=D:/key/key.jks
```
* Build APK
```bash
$ flutter build appbundle
```