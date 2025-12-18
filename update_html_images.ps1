$mapping = Get-Content 'd:\Spelldaily\html_images_b64.txt'
$html = Get-Content 'd:\Spelldaily\index.html' -Raw

foreach ($line in $mapping) {
    if ($line.Trim() -eq "") { continue }
    $parts = $line.Split('|')
    $path = $parts[0]
    $data = $parts[1]
    
    # Extract filename from path (e.g., assets/logo.svg)
    $filename = Split-Path $path -Leaf
    $relPath = "assets/$filename"
    
    # Replace in HTML
    $html = $html.Replace($relPath, $data)
}

Set-Content -Path 'd:\Spelldaily\index.html' -Value $html
