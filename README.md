# MacOSX-SDK

Pack up MacOSX SDK for using to build Bitcoin.

Before using:

```
brew install gnu-tar coreutils
```

Register and download the Apple SDK: (see OS X Readme for details)

[https://developer.apple.com/devcenter/download.action?path=/Developer_Tools/xcode_6.1.1/xcode_6.1.1.dmg](https://developer.apple.com/devcenter/download.action?path=/Developer_Tools/xcode_6.1.1/xcode_6.1.1.dmg)

After downloading `xcode_6.1.1.dmg` open it so it gets mounted.

Then simply run:

```
./generate-tarball.sh
```
