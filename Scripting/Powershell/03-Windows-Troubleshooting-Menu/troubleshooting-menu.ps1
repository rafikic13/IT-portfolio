$c = -1

while ($c -ne 0) {
    Clear-Host
    Write-Host "=== TROUBLESHOOTING MENU ===`n1. Device Manager`n2. Add/Remove Programs`n3. Power Options`n4. Event Viewer`n5. Services Manager`n0. Exit"
    
    $c = Read-Host "Your choice"

    if ($c -eq 1) { Start-Process devmgmt.msc }
    elseif ($c -eq 2) { Start-Process appwiz.cpl }
    elseif ($c -eq 3) { Start-Process powercfg.cpl }
    elseif ($c -eq 4) { Start-Process eventvwr.msc }
    elseif ($c -eq 5) { Start-Process services.msc }
    elseif ($c -eq 0) { Write-Host "Program terminated." }
    else { 
        Write-Host "Invalid number, please try again." 
        Read-Host "Press Enter to continue"
    }

    if ($c -ge 1 -and $c -le 5) {
        $ask = Read-Host "Do you want to perform another action? (y/n)"
        if ($ask -ne "y") { $c = 0 }
    }
}
