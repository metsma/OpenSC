pkgutil --expand-full $1 opensc_pkg
codesign -f --options=runtime -s "Developer ID Application: Riigi" opensc_pkg/Payload/Library/OpenSC/lib/*.*
codesign -f --entitlements OpenSC.entitlements --options=runtime -s "Developer ID Application: Riigi" opensc_pkg/Payload/Library/OpenSC/bin/* 
pkgutil --flatten-full opensc_pkg $1
codesign -f -s "Developer ID Application: Riigi" $1
rm -rf opensc_pkg
