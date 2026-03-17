# Local Admin Toolkit (PowerShell)

## Description

This PowerShell script provides an interactive menu for common Windows local administration tasks.

The script allows the user to:

- Search for a folder by name
- Delete a folder by name
- Add a local user
- Delete a local user
- Grant administrator rights to a local user

This project demonstrates practical PowerShell usage for Windows system administration and support tasks.

---

## Objective

The objective of this exercise is to create an interactive menu on a Windows 10 workstation for the following operations:

- Search for a folder by reading the folder name from keyboard input
- Delete a folder by reading the folder name from keyboard input
- Add a local user by reading the required information from keyboard input
- Delete a local user by reading the required information from keyboard input
- Grant administrator rights to a local user by reading the required information from keyboard input

---

## Features

This script includes the following functions:

1. Search folder by name across all file system drives
2. Delete folder by name across all file system drives
3. Create a local user account
4. Delete a local user account
5. Add a local user to the local Administrators group

---

## Logic of the Program

The program follows these steps:

1. A pause function is defined to wait for the user before continuing.
2. A function checks whether PowerShell is running with administrator privileges.
3. A function searches folders by name across all available file system drives.
4. The script retrieves the exact local Administrators group name using its SID so that it works on both English and French Windows systems.
5. A menu is displayed inside an infinite loop.
6. The user selects an action using 'Read-Host'.
7. A 'switch' statement runs the selected action.
8. Some actions require administrator privileges, such as creating or deleting local users and granting administrator rights.
9. The loop continues until the user chooses to exit.

---

## Concepts Demonstrated

This script demonstrates the following PowerShell concepts:

- Functions
- Variables
- 'While' loops
- 'Switch' statements
- Conditional logic with 'if'
- User input with 'Read-Host'
- Drive enumeration with 'Get-PSDrive'
- Folder search with 'Get-ChildItem'
- Object filtering with 'Where-Object'
- Folder deletion with 'Remove-Item'
- Local user creation with 'New-LocalUser'
- Local user deletion with 'Remove-LocalUser'
- Group membership management with 'Add-LocalGroupMember'
- Privilege checking with Windows security classes
- Error handling with 'try' and 'catch'

---

## Commands Used

Examples of important commands and classes used in this script:

- 'Read-Host'
- 'Write-Host'
- 'Get-PSDrive'
- 'Get-ChildItem'
- 'Where-Object'
- 'Remove-Item'
- 'Get-LocalGroup'
- 'New-LocalUser'
- 'Remove-LocalUser'
- 'Add-LocalGroupMember'
- '[Security.Principal.WindowsIdentity]::GetCurrent()'
- '[Security.Principal.WindowsPrincipal]'

---

## Example Menu

```text
====================  MENU  ====================
1) Search folder (by name, all drives)
2) Delete folder (by name, all drives)
3) Add local user
4) Delete local user
5) Grant local administrator rights
0) Exit
-----------------------------------------------
```

---

## Example Usage

### Search folder

```text
Your choice: 1
Folder name to search: Reports
C:\Users\User\Documents\Reports
D:\Backups\Reports
=> 2 folder(s) found.
```

### Add local user

```text
Your choice: 3
Name / Username: testuser
Password: ********
Local user created: testuser
```

### Grant administrator rights

```text
Your choice: 5
Name / Username: testuser
Added: testuser -> Administrators
```

---

## Script File

The script for this project is located in:

'local-admin-toolkit.ps1'

---

## Requirements

Some functions in this script require PowerShell to be run as administrator.

Administrative privileges are required for:

- Adding a local user
- Deleting a local user
- Granting administrator rights

---

## Purpose of this Exercise

This project was created to demonstrate practical PowerShell skills related to Windows administration.

Unlike simple beginner exercises, this script reflects real support and administrative tasks such as local account management, privilege assignment, and file system operations.

It is designed as a portfolio project to show hands-on scripting ability relevant to help desk, desktop support, and junior system administration roles.
