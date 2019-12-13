# Refactoring

You probably have already done some refactoring as part of code katas.

Refactoring, like TDD, is a disciplined skill with rules.

* Refactoring leaves the external behaviour of code the same.
* Good tests<sup>[1]</sup> are essential to refactoring. Disciplined TDD is a great way to have a reliable test suite.
* We refactor by applying _small changes_ to our code (a single refactoring) from a [catalog of refactorings](https://refactoring.com/catalog/?filter=books-rubyref,books-radio-appear), or by generalising code e.g. turning duplicated if statements into a loop
* Your tests should be passing before and after each refactoring or generalisation.
* By performing multiple refactorings in a row it is possible to significantly change the structure of your code.

# A Single Refactoring: what is a small change?

Small reversible operations. They should have a name, with a clearly defined before and after state.

When mobbing or pairing it's useful to be able to immediately describe a refactoring.

# Generalising code: I can't find it in the catalog!

While in the blue phase (refactoring step) we should look for appropriate generalisations to make.

A good rule of thumb is the [RuleOfThree](http://wiki.c2.com/?RuleOfThree) - if you see the same thing duplicated three times, create a more general solution.

Generalising code is part of refactoring. However, they do not result in like-for-like behaviour, so you will not find them in the catalog.

## The process

Here is the process for performing the **Extract Method** refactoring, which is a _single refactoring_ that you can find in the [catalog of refactorings](https://refactoring.com/catalog/?filter=books-rubyref,books-radio-appear).

1. Run your tests. Do they pass? If they don't you need to solve that first.
2. Apply the refactoring

**Before**
```ruby
class PayslipPrinter
  def print(payslip)
    puts "======================"
    puts "Owed #{payslip.total_owed}."
    puts "Total Deducted #{payslip.total_deducted}"
  end
end
```

```
     .
       .
   . ;.
    .;
     ;;.
   ;.;;
   ;;;;.
   ;;;;;
   ;;;;;
   ;;;;;
   ;;;;;
   ;;;;;
 ..;;;;;..
  ':::::'
    ':`
```

**After**
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
practice applying refactorings from the [catalog of refactorings](https://refactoring.com/catalog/?filter=books-rubyref,books-radio-appear).

# Notes

* [1] - https://www.madetech.com/blog/semantically-stable-test-suites

