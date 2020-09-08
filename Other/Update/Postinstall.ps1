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

# Delete downloaded file as they share the same name
Debug info "Removing ShareX ZIP files from '$DownloadDir'"
Remove-Item -Force $DownloadDir\ShareX*.zip
