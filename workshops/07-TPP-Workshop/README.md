# Transformation Priority Premise

This workshop assumes that you have practiced the discipline of Test Driven Development.

We already know that in TDD there are three stages which are repeated until the code is complete.

1. Write the simplest failing test
2. Write the simplest code to make it pass
3. Refactor

We also know that before writing a failing test it is **important to think**.

However, we don't want to have to imagine the whole algorithm as that would be counter to the benefits of TDD.

**Remember:** as the tests get more specific, the code gets more generic.

In order to incrementally refactor the code to become more generic we must avoid _getting stuck_. 

In order to ensure that our code is maintainable we must avoid complexity.

## The stages of TDD

We already have a name for first stage of TDD, it's called Testing. We also already have a name for the last stage of TDD, it's called Refactoring.

What we haven't named is the middle stage, "Make it pass".

**What are we doing in that step?** We could say that we are _Transforming code_. 

Leaving us with a nice symmetrical list of names for each stage:

1. Testing
2. Transforming
3. Refactoring

## A list of transformation

When we write a failing test we force ourselves to Transform our code to make it pass.

Here is a non-exhaustive list of transformations:

1. ({} → nil) no code at all → code that employs nil
2. (nil → constant)
3. (constant → constant+) a simple constant to a more complex constant
4. (constant → scalar) replacing a constant with a variable or an argument
5. (statement → statements) adding more unconditional statements.
6. (unconditional → if) splitting the execution path
7. (scalar → array)
8. (array → container)
9. (statement → tail-recursion)
10. (if → while)
11. (statement → non-tail-recursion)
12. (expression → function) replacing an expression with a function or algorithm
13. (variable → assignment) replacing the value of a variable.
14. (case) adding a case (or else) to an existing switch or if

## Choosing the next failing test

Can you see it yet? The transformations start out simple, and then they get more complicated.

We can begin to put a definition on what the "Simplest" code is.

We know it is important to **Think** before we write a test, maybe we can write tests that force only simpler Transformations.

This is the premise - these transformations are that most optimal way to gradually build functionality.

What we do is think about potential tests we can write, and instead of going for the gold - we can choose failing tests which force us to perform transformations near the top of the list first.

## To Do

Do the Word Wrap Kata - but this time really focus on the list of transformations, and pay attention to their priority.

The interesting part about the Word Wrap Kata is that it is really easy to get stuck.

What do you think will happen if you chose to write tests that force the most complex Transformations?

What do you do when you cannot think of test that forces a simple Transformation?

## References

* [Transformation Priority Premise](https://8thlight.com/blog/uncle-bob/2013/05/27/TheTransformationPriorityPremise.html)
* [Wikipedia: TPP](https://en.wikipedia.org/wiki/Transformation_Priority_Premise)

