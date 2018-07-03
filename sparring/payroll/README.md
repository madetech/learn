# Payroll

This is an exercise in Software Design and Changing Requirements.

Don't peek ahead at the later steps of this challenge, as part of the point of this is to deal with changing requirements.

## Requirements

Using the discipline of TDD, and Acceptance Testing, build a Payroll system.

Architectural design is up to you, but design wisely! Avoid a big ball of mud!

* The payroll system should calculate pay for salaried employees.
* Salaries employees can receive their pay weekly or monthly.
* There should be a web interface.
* Payslips should calculate the amount of tax deductable
* Payslips should be viewable via a web interface
* If an employee is a member of a union, their union dues should be deducted from their post-tax salary.
* The tax year is January 2nd to January 1st.

## Tax Rules

* Up to £10,000, tax is tax-free.
* For the sum of pay between £10,000-25,000 tax is deducted at a rate of 20%.
* For the remainder amount over £25,000 tax is deducted at a rate of 40%.

## Payslips

Should contain:

* Total gross pay for current tax year.
* Total gross pay for tax period (week, month).
* List of deducted amounts pre-tax incl. rates.
* List of deducated amounts post-tax incl. what for.
* The length of the tax period, with start and end dates. 

## Out of scope

* No need to implement a secure login system
* No need to implement an emailing system

# Next

Coming soon!
