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
