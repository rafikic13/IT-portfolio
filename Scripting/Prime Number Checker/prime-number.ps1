$a = [int](Read-Host "Enter a number")
$b = $true
# on suppose que le numero est premier, s'il est pas on change a false
if ($a -le 1) {
    $b = $false
}
# si le nombre est 1 ou moin, ce n'est pas un nombre premier parceque le 1 n'a pas 2 diviseurs distinctes et le 0 n'est pas divisibles par soi meme ; donc on met $b = $false

for ($c = 2; $c -lt $a; $c++) {
    if ($a % $c -eq 0) {
        $b = $false
        break
    }
}
# on teste tout les nombres entre 2 et (a -1), on teste a chaque tour si a est divisible par c grace au modulo, si $a % $c donne 0 alors a est divisble par c donc premier on met fin a la boucle avec break
if ($b) {
    Write-Output "$a is prime"
}
else {
    Write-Output "$a is not prime"
}
#une fois la boucle terminee si $b est true le nombre est premier, else il n'est pas premier  