$lines = Get-Content 'd:\Spelldaily\b64.txt'
$css = ""
foreach ($line in $lines) {
    if ($line -match 'overall_container.svg') {
        $data = $line.Split('|')[1]
        $css += ".bg-overall { background-image: url('$data') !important; }`n"
    }
    elseif ($line -match 'thismonth_container.svg') {
        $data = $line.Split('|')[1]
        $css += ".bg-thismonth { background-image: url('$data') !important; }`n"
    }
    elseif ($line -match 'wordbank_container.svg') {
        $data = $line.Split('|')[1]
        $css += ".bg-word-bank { background-image: url('$data') !important; }`n"
    }
    elseif ($line -match 'accomplishments_container.svg') {
        $data = $line.Split('|')[1]
        $css += ".acc-bg { background-image: url('$data') !important; }`n"
    }
    elseif ($line -match 'bottomtext_container.svg') {
        $data = $line.Split('|')[1]
        $css += ".app-footer { background-image: url('$data') !important; }`n"
    }
}
Set-Content -Path 'd:\Spelldaily\assets.css' -Value $css
