pkgutil --expand-full $1 opensc_pkg
codesign -f --options=runtime -s "Developer ID Application: Riigi" opensc_pkg/Payload/Library/OpenSC/lib/*.*
codesign -f --entitlements OpenSC.entitlements --options=runtime -s "Developer ID Application: Riigi" opensc_pkg/Payload/Library/OpenSC/bin/* 
pkgutil --flatten-full opensc_pkg $1
productsign --sign "Developer ID Installer: Riigi" $1 $1.signed
rm -rf opensc_pkg
