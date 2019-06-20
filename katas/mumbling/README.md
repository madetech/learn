{% capture content %}
# Mumbling Kata

The goal of this kata is to implement the `mumble_letters()` method which takes a string as input and returns a formatted output string. The output string contains sequences of repeating letters with each letter repeated a number of times based on its position in the input string i.e. the 3rd letter in the string is repeated 3 times. Each sequence of repeated letters is separated with a hyphen(-) and the first letter of each sequence is capitalised.

The following examples illustrate the `mumble_letters()` method:

```ruby
mumble_letters("a")
=> "A"

mumble_letters("abC")
=> "A-Bb-Ccc"

mumble_letters("aBCd")
=> "A-Bb-Ccc-Dddd"

mumble_letters("QWERTY")
=> "Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy"
```

## Rules

Note that your `mumble_letters()` implementation should also handle an empty string input appropriately.

## References

* [Codewars Mumbling Kata](https://www.codewars.com/kata/mumbling)
{% endcapture %}
{% include legacy_markdown_container.html content=content %}
