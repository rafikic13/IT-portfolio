# Number Filter (PowerShell)

## Description

This PowerShell script asks the user to enter a number and displays all numbers that:

- Are multiples of 3
- End with the digit 1
- Are smaller than the number entered

The script uses a loop to test each number until the limit entered by the user is reached.

---

## Logic of the Program

The program follows these steps:

1. The script asks the user to enter a number using 'Read-Host'.
2. A variable starts at 0.
3. A loop checks every number until it reaches the number entered.
4. For each number the script checks two conditions:
   - The number must be divisible by 3.
   - The number must end with the digit 1.
5. If both conditions are true, the number is displayed.

---

## Concepts Demonstrated

This script demonstrates:

- Variables
- 'Read-Host'
- 'While' loops
- 'if' conditions
- Modulo operator '%'
- Output using 'Write-Host'

---

## Example Usage

```text
Enter a number: 50
31
```

Explanation:

31 is divisible by 3 and ends with the digit 1.

---

## Script File

'number-filter.ps1'

---

## Purpose

This exercise demonstrates basic numerical filtering using loops and conditional logic in PowerShell.
