# Yahoo KeyKey! Installer

A simple project that creates a modern installer for Yahoo! KeyKey input method.

## About

Although the development of Yahoo! KeyKey input method was terminated in 2013, and Yahoo! removed the product as well, it is still a popular input method among Mac users in Taiwan.

Actually Mac users can still run Yahoo! KeyKey since it has a 64 bit binary and it is based on the [Input Method Kit](https://developer.apple.com/documentation/inputmethodkit), however, it used a legacy installer and it makes users hardly to install Yahoo! KeyKey on modern macOS.

Yahoo! KeyKey was packaged with PackageMaker. It was deprecated, and it does not support code-signing but developers need to sign their packages in order to pass the validation of [Gatekeeper](https://support.apple.com/en-vn/HT202491), which was introduced in macOS 10.7 Lion. The modern way to create mac packages is to use `pkgbuild` and `productbuild`.

## Run the Build Script

If you want to build a Yahoo! KeyKey installer by your self, what you need include

- [Xcode](https://developer.apple.com/xcode/)
- A [Developer ID Certificates](https://help.apple.com/xcode/mac/current/#/dev033e997ca). You can obtain the certificate on [Apple's developer site](https://developer.apple.com).

The call "build.sh" under command line. You may need to change this line:

```sh
productbuild --sign "Developer ID Installer: Weichung Yang" ...
```

Please use your own code-sign identity here.
