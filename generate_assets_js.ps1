$mapping = Get-Content 'd:\Spelldaily\html_images_b64.txt'
$out = "const embeddedAssets = {`n"
foreach ($line in $mapping) {
    if ($line.Trim() -eq "") { continue }
    $idx = $line.IndexOf('|')
    if ($idx -eq -1) { continue }
    $path = $line.Substring(0, $idx)
    $data = $line.Substring($idx + 1)
    
    # Extract filename
    $filename = Split-Path $path -Leaf
    $relPath = "assets/$filename"
    
    # Escape quotes if any in data (unlikely for base64) but good practice
    # No, base64 data URI is safe for double quotes encapsulation usually.
    $out += "  `"$relPath`": `"$data`",`n"
}
$out += "};"
Set-Content -Path 'd:\Spelldaily\assets_data.js' -Value $out
Write-Host "assets_data.js created."
