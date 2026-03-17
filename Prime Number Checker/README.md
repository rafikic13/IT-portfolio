# Prime Number Checker (PowerShell)

## Description

This PowerShell script asks the user to enter an integer and determines whether the number is a prime number or not.

A prime number is a number greater than 1 that has no divisors other than 1 and itself.

This exercise demonstrates basic PowerShell programming concepts including:

- User input
- Conditional logic
- Loops
- Mathematical validation

---

## Logic of the Program

The program follows these steps:

1. The script asks the user to enter an integer using 'Read-Host'.
2. The script checks if the number is less than or equal to 1.
3. If the number is less than or equal to 1, it cannot be a prime number.
4. If the number is greater than 1, the script checks whether it has divisors between 2 and the number minus one.
5. A loop is used to test each possible divisor.
6. If the number is divisible by any number in this range, it is not prime.
7. If no divisor is found, the number is considered a prime number.

---

## Concepts Demonstrated

This script demonstrates the following PowerShell concepts:

- Variables
- 'Read-Host' for user input
- 'for' loops
- 'if' conditional statements
- Modulo operator '%' for divisibility testing
- Output using 'Write-Host'

---

## Example Usage

Example execution of the script:

```text
Enter a number: 7
7 is a prime number.

Enter a number: 10
10 is not a prime number.
```

---

## Script File

The PowerShell script for this exercise is located in:

'prime-number.ps1'

---

## Purpose of this Exercise

This project was created as part of my PowerShell learning path to build scripting skills useful for Windows system administration.

While this script is simple, it demonstrates core programming logic that will later be applied to more advanced automation tasks in PowerShell.
