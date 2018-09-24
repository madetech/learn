# Remote Tests

**Note** 

If you are applying for a full-time Software Engineering role, **without** a 12-week learning course at the start, you should use [this remote test](https://github.com/madetech/handbook/tree/master/guides/hiring/remote_test).

# For the Academy

This is meant for candidates applying for the [Academy Position](https://www.madetech.com/careers/academy), with a 12-week learning course.

At this point you should have already had a phone call with us, and should have been introduced to our Academy.

## How it works

We'd really love it if you were able to complete a short programming exercise.
Spending no more than two hours, please try to work through as many of these code katas (or exercises) as you can. 

**Send us anything that you have after two hours, even if you are part way through an exercise.**

Please use whatever programming language _that you're most comfortable with_, as [we're not picky](https://www.madetech.com/blog/polyglot-disciplines).

To progress to the next stage in the application process, we'd expect you to be able to complete the first two katas. 

The first one is the easiest, and they get progressively harder from there.

### Using Codewars

**We recommend that you use Codewars**

You can complete these exercises using [Codewars](https://www.codewars.com), which lets you use your browser to complete these exercises.

* Codewars will also verify your code, using tests that the exercise maintainer has written.
* If you do not have a development environment setup on your computer, you don't need to set one up.

If you don't already have an account on Codewars you'll need to sign up – it's completely free.

Codewars supports common languages such as Ruby, Python, JavaScript, Java, C#, along with others.

Send us a link to your solutions on Codewars: it's possible to either share your profile URL, or get a shareable link when you complete the solution. 
If you weren't able to complete it, copy and paste your solution and send it via email.

_Alternatively..._

If Codewars doesn't support your favoured language, or if you do not wish to use it for another reason, please just ping us back your code solution via email.

### Exercise 1. String Repeat

[Codewars URL](https://www.codewars.com/kata/string-repeat)

Write a function called `repeatStr` which repeats the given string exactly n times.

```ruby
repeatStr(6, "P") # "PPPPPP" 
repeatStr(5, "World") # "WorldWorldWorldWorldWorld"
```

### Exercise 2. Printer Errors

[Codewars URL](https://www.codewars.com/kata/printer-errors)

On a production line in a factory there is a printer that prints labels for boxes.
The printer has to use colours on these labels, for the sake of simplicity are named with letters from `a` to `m`.

Colours that are used are recorded in a control string. 

As an example, a "good" control string would be `"aaabbbbhaijjjm"`.
This means that the printer used color `a` 3 times, color `b` 4 times, color `h` once, color `a` once, etc...

When there is a problem (caused by unknown causes), an "erroneous" control string is produced.
For example, `"aaaxbbbbyyhwawiwjjjwwm"`.

You need to write a function `printer_error` which when given a control string, similar to the ones above, will produce a **string** representing a rational whose numerator is the number of errors, and a denominator that is the length of the control string.

Don't simplify this fraction to a simpler expression.

* The string always has a length greater or equal to one.
* The string only contains letters from `a` to `z`

```ruby
error_printer("aaabbbbhaijjjm") # "0/14"
error_printer("aaaxbbbbyyhwawiwjjjwwm") # "8/22"
```

### Exercise 3. Reverse or Rotate

[Codewars URL](https://www.codewars.com/kata/reverse-or-rotate)

You are given a **string** of digits `digits` (0-9), e.g. `"93819231029"`, and an **integer** `chunk_size` that represents the size of the chunk.

The tasks is to cut the **string** `digits` into chunks of the size represented by the **integer** `chunk_size`, a chunk is a substring of the initial string.

* Ignore the last chunk if it's size is less than the `chunk_size`.

If a chunk represents an integer such that the **sum of the cubes of its digits is divisible by 2**, reverse that chunk; otherwise rotate it to the left by one position.

Put the modified chunks back together and return that result as a string.

if

* `chunk_size` is `<= 0` or if `digits` is `empty` return `""`
* `chunk_size` is greater `(>)` than the length of `digits` it is impossible to take a chunk of size `chunk_size` hence return `""`.

```ruby
revrot("123456987654", 6) # "234561876549"
revrot("123456987653", 6) # "234561356789"
revrot("66443875", 4) # "44668753"
revrot("66443875", 8) # "64438756"
revrot("664438769", 8) # "67834466"
revrot("123456779", 8) # "23456771"
revrot("", 8) # ""
revrot("123456779", 0) # "" 
revrot("563000655734469485", 4) # "0365065073456944"
```

