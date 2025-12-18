$files = @(
    'd:\Spelldaily\assets\overall_container.svg',
    'd:\Spelldaily\assets\thismonth_container.svg',
    'd:\Spelldaily\assets\wordbank_container.svg',
    'd:\Spelldaily\assets\accomplishments_container.svg',
    'd:\Spelldaily\assets\bottomtext_container.svg'
)
$out = ""
foreach ($f in $files) {
    $bytes = [IO.File]::ReadAllBytes($f)
    $b64 = [Convert]::ToBase64String($bytes)
    $out += "$f|data:image/svg+xml;base64,$b64`n"
}
Set-Content -Path 'd:\Spelldaily\b64.txt' -Value $out
