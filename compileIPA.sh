#!/bin/bash
echo "[*] Compiling..."
$(which xcodebuild) clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -sdk iphoneos
mv build/Release-iphoneos/doubleh3lix.app doubleh3lix.app
mkdir Payload
mv doubleh3lix.app Payload/doubleh3lix.app
echo "[*] Zipping into .ipa"
zip -r9 doubleh3lix.ipa Payload/doubleh3lix.app
rm -rf build Payload
echo "[*] Done!"
