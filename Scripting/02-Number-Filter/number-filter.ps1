$a = Read-Host "Entrez un nombre"
$b = 0
do {
    if ($b % 3 -eq 0 -and $b % 10 -eq 1) { Write-Host $b }
    $b++
} while ($b -lt $a)
