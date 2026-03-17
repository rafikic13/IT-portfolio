# PowerShell Labs

## Overview

This repository contains PowerShell scripts developed to practice and demonstrate Windows system administration automation.

The goal of this section is to build practical scripting skills used by IT technicians, help desk engineers, and system administrators.

The scripts start with simple logic exercises and progressively move toward real administrative automation tasks such as file system management, troubleshooting tools, and local user administration.

---

## Repository Structure

Each folder represents a small project or lab focused on a specific concept.

```
PowerShell/
│
├── 01-Prime-Number-Checker
├── 02-Number-Filter
├── 03-Windows-Troubleshooting-Menu
└── 04-Local-Admin-Toolkit
```

Each project contains:

- A PowerShell script (`.ps1`)
- A README explaining the objective and logic of the script
- Example usage when relevant

---

## Labs Included

### 01 – Prime Number Checker

A basic scripting exercise that determines whether a number entered by the user is a prime number.

Concepts demonstrated:

- Variables
- Loops
- Conditional logic
- User input with `'Read-Host'`

---

### 02 – Number Filter

Displays numbers that meet two mathematical conditions:

- Multiple of 3
- Ending with the digit 1
- Lower than the value entered by the user

Concepts demonstrated:

- `'While'` loops
- Conditional statements
- Modulo operator `%`

---

### 03 – Windows Troubleshooting Menu

An interactive PowerShell menu used to quickly launch Windows administrative tools.

Tools available in the menu:

- Device Manager (`'devmgmt.msc'`)
- Programs and Features (`'appwiz.cpl'`)
- Power Options (`'powercfg.cpl'`)
- Event Viewer (`'eventvwr.msc'`)
- Services Manager (`'services.msc'`)

Concepts demonstrated:

- Menu-based scripts
- `'Start-Process'`
- User interaction with `'Read-Host'`

---

### 04 – Local Admin Toolkit

An administrative PowerShell tool that allows the user to perform several system management operations:

- Search for folders across all drives
- Delete folders
- Create local users
- Delete local users
- Grant administrator rights to a user

Concepts demonstrated:

- Functions
- File system enumeration using `'Get-PSDrive'`
- Folder search using `'Get-ChildItem'`
- Local user management using `'New-LocalUser'`
- Local user deletion using `'Remove-LocalUser'`
- Administrator group management using `'Add-LocalGroupMember'`
- Privilege verification using Windows security classes

---

## Skills Demonstrated

The scripts in this repository demonstrate knowledge of several PowerShell concepts including:

- Variables
- Functions
- Loops (`'While'`)
- Conditional logic (`'if'`, `'switch'`)
- User input with `'Read-Host'`
- File system operations
- Windows administrative tools
- Local user management
- Error handling using `'try'` / `'catch'`

---

## Purpose

This repository is part of my IT portfolio and is designed to demonstrate hands-on PowerShell scripting abilities relevant to:

- IT Support
- Help Desk
- Desktop Support
- Junior System Administration roles

The projects progressively move from simple scripting logic to more practical system administration automation.

---

## Author

Raphael Abou Assaly
