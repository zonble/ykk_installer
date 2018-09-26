sudo chown -R root:admin ./root/*

pkgbuild --root ./root --identifier com.yahoo.keykey.installerpackage --version 7.0 --scripts Scripts YahooKeyKeyApp.pkg

productbuild --sign "Developer ID Installer: Weichung Yang" --product requirement.plist --distribution distribution.plist --resources ./Resources --package-path YahooKeyKeyApp.pkg YahooKeyKey.pkg
