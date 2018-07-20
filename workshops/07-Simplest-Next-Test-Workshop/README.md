# Simplest Next Test

This workshop assumes that you have practiced the discipline of Test Driven Development.

We already know that in TDD there are three stages which are repeated until the code is complete.

1. Write the simplest failing test
2. Write the simplest code to make it pass
3. Refactor

We also know that before writing a failing test it is **important to think**.

However, we don't want to have to imagine the whole algorithm as that would be counter to the benefits of TDD.

**Remember:** as the tests get more specific, the code gets more generic.

In order to incrementally refactor the code to become more generic we must avoid _getting stuck_. 

The biggest risk that prevents practicing TDD well is diving into too much complexity too early.

We must avoid unnecessary complexity at all costs.

## The stages of TDD

We already have a name for structural changes that have no affect on behaviour, we call this Refactoring.

What we haven't named is the act of making behavioural changes to code.

We can call this **Transforming code**.

1. Transform the test code _and watch it fail._
2. Transform the production code _and watch it pass._
3. Refactor the code _and ensure it still passes._

## The Transformation Priority Premise

When we **transform our test code** to create a failing test we force ourselves to **transform our production code** to make our test pass.

Not all transformations are documented, but this is a good guide:

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

The premise is that if you follow this priority of transformations, you will avoid getting stuck.

Furthermore, the premise is that you will also avoid inefficient algorithms, which can mean the difference between ending up with a bubblesort vs quicksort.

If you find this not to be the case, we'd very much like you to [share your experience](https://github.com/madetech/learn/issues).

This premise was developed by Robert C. Martin, there are links to some original content on this topic in the footer.

### ({} -> nil)

The test code...

```ruby
# {} (no code)
```

transforms to code that employs nil:

```ruby
describe Wrapper do
  expect(Wrapper.wrap(nil)).to eq('')
end
```

> This fails because there is no Wrapper class.

We must first define that

```ruby
# {} (no code)
```

transforms to code that employs nil:

```ruby
class Wrapper
  def self.wrap
    nil
  end
end
```

We then check that this fails for the correct reason. It should be because we don't get `''`

### (nil -> constant)

To make this pass we must transform from nil to constant

```ruby
class Wrapper
  def self.wrap
    nil
  end
end
```

```ruby
class Wrapper
  def self.wrap
    ''
  end
end
```

> Now our first test passes.

If you want to read more about this, the blog post in the [references](#references) continues this story.

## Choosing the next failing test

Can you see it yet? The transformations start out simple, and then they get more complicated.

We can begin to put a definition on what the "Simplest" code is.

We know it is important to **Think** before we write a test, maybe we can write tests that force only simpler Transformations.

This is the premise - these transformations are that most optimal way to gradually build functionality.

What we do is think about potential tests we can write, and instead of going for the gold - we can choose failing tests which force us to perform transformations near the top of the list first.

## To Do

Find a pair to do the Word Wrap Kata with - as a pair, this time, really focus on the list of transformations, and pay attention to their priority.

The interesting part about the Word Wrap Kata is that it is really easy to get stuck.

What do you think will happen if you chose to write tests that force the most complex Transformations?

What do you do when you cannot think of test that forces a simple Transformation?

## References

* [Transformation Priority Premise](https://8thlight.com/blog/uncle-bob/2013/05/27/TheTransformationPriorityPremise.html)
* [Wikipedia: TPP](https://en.wikipedia.org/wiki/Transformation_Priority_Premise)

