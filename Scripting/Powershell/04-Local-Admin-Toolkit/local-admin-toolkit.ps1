# Simple pause: waits until the user presses Enter before continuing.
function Pause-Enter { Read-Host "Press Enter to continue" }

# Checks if the PowerShell session is running with administrator privileges.
# - GetCurrent() : retrieves the Windows identity of the current user.
# - WindowsPrincipal(...) : creates an object that allows testing role membership.
# - IsInRole(...) : returns True if the user belongs to the Administrators group.
function isAdmin {
    $principal = [Security.Principal.WindowsPrincipal](
        [Security.Principal.WindowsIdentity]::GetCurrent()
    )
    $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Function to search folders by name.
# - param([string]$Name) : takes the folder name to search as parameter.
# - Get-PSDrive -PSProvider FileSystem : lists available drives (C:\, D:\ ...).
# - Get-ChildItem -Directory -Recurse : recursive folder search.
# - Where-Object Name -eq $Name : keeps only folders whose name matches exactly.
# - Returns an array containing the found objects.
function Find-FolderByName {
    param([string]$Name)
    $result = @()
    (Get-PSDrive -PSProvider FileSystem).Root | ForEach-Object {
        $result += Get-ChildItem $_ -Directory -Recurse -ErrorAction SilentlyContinue |
                   Where-Object Name -eq $Name
    }
    return $result
}

# Retrieves the exact name of the "Administrators" group using its SID (S-1-5-32-544).
# Compatible with Windows FR (Administrateurs) and EN (Administrators).
$AdminGroupName = (Get-LocalGroup | Where-Object SID -eq 'S-1-5-32-544').Name

# Infinite loop: displays the menu until the user chooses 0, q or quit.
while ($true) {
    Clear-Host
    "====================  MENU  ===================="
    "1) Search folder (by name, all drives)"
    "2) Delete folder (by name, all drives)"
    "3) Add local user"
    "4) Delete local user"
    "5) Grant local administrator rights"
    "0) Exit"
    "-----------------------------------------------"

    $choice = (Read-Host "Your choice").Trim()
    if ($choice -in '0','q','Q','quit') { break }

    switch ($choice) {

        ###########################################################################
        # (1) SEARCH FOLDER
        # - Calls the Find-FolderByName function with the entered name.
        # - If no result: message "No folder found".
        # - Otherwise: displays the full path (.FullName) of each found folder.
        ###########################################################################
        '1' {
            $name = Read-Host "Folder name to search"
            $found = Find-FolderByName -Name $name
            if ($found.Count -eq 0) { Write-Host "No folder named '$name' found." }
            else {
                $found | ForEach-Object { Write-Host $_.FullName }
                Write-Host "=> $($found.Count) folder(s) found."
            }
            Pause-Enter
        }

        ###########################################################################
        # (2) DELETE FOLDER
        # - Reuses the same Find-FolderByName function to avoid rewriting
        #   the search logic.
        # - Asks for confirmation (y/n) before each deletion.
        # - Remove-Item -LiteralPath ... -Recurse -Force deletes the folder and its contents.
        ###########################################################################
        '2' {
            $name = Read-Host "Folder name to delete"
            $found = Find-FolderByName -Name $name
            if ($found.Count -eq 0) { 
                Write-Host "No folder named '$name' found."
            } else {
                foreach ($folder in $found) {
                    $ans = Read-Host "Delete '$($folder.FullName)' ? (y/n)"
                    if ($ans -eq 'y') {
                        Remove-Item -LiteralPath $folder.FullName -Recurse -Force -ErrorAction SilentlyContinue
                        Write-Host "Deleted: $($folder.FullName)"
                    }
                }
            }
            Pause-Enter
        }

        ###########################################################################
        # (3) ADD LOCAL USER
        # - Checks if the session is admin using isAdmin().
        # - Asks for the Name/Username and password (secure).
        # - New-LocalUser : creates the local user account.
        # - try/catch : captures and displays any error (ex: user already exists).
        ###########################################################################
        '3' {
            if (-not (isAdmin)) { Write-Host "Run PowerShell as administrator."; Pause-Enter; break }
            $user = Read-Host "Name / Username"
            $pwd  = Read-Host "Password" -AsSecureString
            try {
                New-LocalUser -Name $user -Password $pwd -ErrorAction Stop
                Write-Host "Local user created: $user"
            } catch { Write-Host "Error: $($_.Exception.Message)" }
            Pause-Enter
        }

        ###########################################################################
        # (4) DELETE LOCAL USER
        # - Checks if the session is admin.
        # - Remove-LocalUser deletes the account.
        # - try/catch handles errors (user not found, etc.).
        ###########################################################################
        '4' {
            if (-not (isAdmin)) { Write-Host "Run PowerShell as administrator."; Pause-Enter; break }
            $user = Read-Host "Name / Username"
            try {
                Remove-LocalUser -Name $user -ErrorAction Stop
                Write-Host "Local user deleted: $user"
            } catch { Write-Host "Error: $($_.Exception.Message)" }
            Pause-Enter
        }

        ###########################################################################
        # (5) ADD TO ADMINISTRATORS GROUP
        # - Checks if the session is admin.
        # - Adds the user to the group whose name is stored in $AdminGroupName.
        # - try/catch handles multiple cases: already member, access denied, unknown user.
        ###########################################################################
        '5' {
            if (-not (isAdmin)) { Write-Host "Run PowerShell as administrator."; Pause-Enter; break }
            $user = Read-Host "Name / Username"
            try {
                Add-LocalGroupMember -Group $AdminGroupName -Member $user -ErrorAction Stop
                Write-Host "Added: $user -> $AdminGroupName"
            } catch {
                if ($_.Exception.Message -match 'already exists') { Write-Host "Already a member of $AdminGroupName." }
                elseif ($_.Exception.Message -match 'Access is denied') { Write-Host "Access denied." }
                else { Write-Host "Error: $($_.Exception.Message)" }
            }
            Pause-Enter
        }

        ###########################################################################
        # (default): message if the choice does not match any menu option
        ###########################################################################
        default { Write-Host "Invalid choice."; Pause-Enter }
    }
}
