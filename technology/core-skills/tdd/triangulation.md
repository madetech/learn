# Triangulation

Given a method f which has the production code as follows:

```ruby
def eat_cake(cake)
  unwrap(cake)
  eat(cake)
end
```

When TDDing you need at least 2 tests to be confident that your method hasn’t been slimed.  With only 1 test you can pass the test by hard coding the tested value.  E.g.

```ruby
def test_eating_cake_eats_carrot_cake
  eat_cake(:carrot_cake)
  expect(eat).called_with :carrot_cake
end

def eat_cake(cake)
  eat(:carrot_cake)
end
```

## Marking scheme

* Can describe the situations where using triangulation helps improve test quality.
* Can demonstrate examples of where they have used triangulation.
* Can demonstrate triangulation when TDDing an example piece of code.

