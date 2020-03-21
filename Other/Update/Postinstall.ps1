# Move the "Portable" file "PortableApps"

$_PortableFile    = "$AppDir\ShareX\Portable" 
$_PortableAppsFile = "$AppDir\ShareX\PortableApps" 

If (Test-Path $_PortableFile) {
  Move-Item -Path $_PortableFile `
    -Destination $_PortableAppsFile
}
Else {
  New-Item -ItemType file $_PortableAppsFile
}
