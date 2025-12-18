$files = @(
    'd:\Spelldaily\assets\logo.svg',
    'd:\Spelldaily\assets\overall.svg',
    'd:\Spelldaily\assets\words_practiced.svg',
    'd:\Spelldaily\assets\this_month.svg',
    'd:\Spelldaily\assets\words_practicedthis_month.svg',
    'd:\Spelldaily\assets\words_missedthis_month.svg',
    'd:\Spelldaily\assets\word_bank.svg',
    'd:\Spelldaily\assets\accomplishments.svg',
    'd:\Spelldaily\assets\fire.svg',
    'd:\Spelldaily\assets\bullseye.svg',
    'd:\Spelldaily\assets\cup.svg'
)
$out = ""
foreach ($f in $files) {
    if (Test-Path $f) {
        $bytes = [IO.File]::ReadAllBytes($f)
        $b64 = [Convert]::ToBase64String($bytes)
        $mime = if ($f -match '\.svg$') { 'image/svg+xml' } else { 'image/png' }
        $out += "$f|data:$mime;base64,$b64`n"
    }
}
Set-Content -Path 'd:\Spelldaily\html_images_b64.txt' -Value $out
