# Refactoring

You probably have already done some refactoring as part of code katas.

Small changes to your code to leave it just a little bit better.

Refactoring, like TDD is a discipline skill with rules.

* Good tests<sup>[1]</sup> are essential to refactoring. Disciplined TDD is a great way to have a reliable test suite.
* _Small changes_ from a [catalog of refactorings](https://refactoring.com/catalog/?filter=books-rubyref,books-radio-appear)

# What is a small change?

Small reversible operations. 

* When mobbing or pairing it's useful to be able to immediately describe a refactoring.

## The process

Here is the process for performing the **Extract Method* refactoring.

1. Run your tests. Do they pass? If they don't you need to solve that first.
2. Apply the refactoring

*Starting Code*
```ruby
class PayslipPrinter
  def print(payslip)
    puts "======================"
    puts "Owed #{payslip.total_owed}."
    puts "Total Deducted #{payslip.total_deducted}"
  end
end
```
  ____
 |    |
 |    | 
 |    |
\      /
 \    / 
  \  / 
   \/

*Resultant Code*
```ruby
class PayslipPrinter
  def print(payslip)
    puts "======================"
    print_totals(payslip.total_owed, payslip.total_deducted)
  end

  def print_totals(total_owed, total_deducted)
    puts "Owed #{total_owed}."
    puts "Total Deducted #{total_deducted}"
  end
end
```

3. Run your tests. Do they pass? _If they don't, you've incorrectly performed your refactoring._

## Stop and understand

* Why do we run the tests before and afterwards?
* Why not make lots of changes in one go?

# To Do

Using the [Yatzy Refactoring Kata](https://github.com/emilybache/Yatzy-Refactoring-Kata) by Emily Bache, 
practice applying small refactoring from the [catalog of refactorings](https://refactoring.com/catalog/?filter=books-rubyref,books-radio-appear).

# Notes

* [1] - https://www.madetech.com/blog/semantically-stable-test-suites
