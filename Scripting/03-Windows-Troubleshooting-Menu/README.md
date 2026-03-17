# Windows Troubleshooting Menu (PowerShell)

## Description

This PowerShell script provides a simple troubleshooting menu that allows a technician to quickly open common Windows administrative tools.

The script displays a menu and lets the user choose which tool to launch. It continues running until the user decides to exit.

This type of script can help IT support technicians access frequently used system utilities more quickly.

---

## Objective

The objective of this exercise is to create a PowerShell menu that allows a technician to launch several Windows troubleshooting tools.

The tools available in the menu are:

- Device Manager
- Add/Remove Programs
- Power Options
- Event Viewer
- Services Manager

Each option is associated with a number that the user selects to open the corresponding tool.

---

## Logic of the Program

The program follows these steps:

1. A variable is initialized to control the loop.
2. A menu is displayed using 'Write-Host'.
3. The user enters a number using 'Read-Host'.
4. Depending on the selected number, the script launches a Windows management tool using 'Start-Process'.
5. If the user enters an invalid number, the script displays an error message.
6. After performing an action, the user is asked if they want to perform another action.
7. The program continues until the user chooses to exit.

---

## Concepts Demonstrated

This script demonstrates several PowerShell concepts:

- Variables
- 'While' loops
- Conditional statements using 'if' and 'elseif'
- User input using 'Read-Host'
- Displaying information using 'Write-Host'
- Launching system tools using 'Start-Process'

---

## Windows Tools Launched

The script launches the following Windows utilities:

- 'devmgmt.msc' → Device Manager
- 'appwiz.cpl' → Programs and Features
- 'powercfg.cpl' → Power Options
- 'eventvwr.msc' → Event Viewer
- 'services.msc' → Services Manager

---

## Example Usage

```
=== TROUBLESHOOTING MENU ===

1. Device Manager
2. Add/Remove Programs
3. Power Options
4. Event Viewer
5. Services Manager
0. Exit

Your choice: 1
```

The script will open the corresponding Windows tool.

---

## Script File

The script for this exercise is located in:

'troubleshooting-menu.ps1'

---

## Purpose of this Exercise

This exercise demonstrates how PowerShell can be used to build interactive tools that simplify access to Windows administrative utilities.

Menu-based scripts like this are commonly used by IT technicians to speed up troubleshooting and system management tasks.
