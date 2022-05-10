# Wordle


Create a program, which, given a 5 character string as a target word, and a 5 character string as a guess, return a 5 character string where:

‘2’ = this letter is in this position
‘1’ = this letter is in the target word but not this position
‘0’ = this letter is either not in the target word, or is not in the target word as many times as it is in the guess

##Examples

```
Target = “hairy”
Guess = “charm”
Result = “01120”
```

```
Target = “chair”
Guess = “chore”
Result = “22010”
```

```
Target = “alert”
Guess = “alarm”
Result = “22020”
```

```
Target = “alert”
Guess = “alarm”
Result = “22020”
```
```
Target = “reads”
Guess = “elect”
Result = “10000”
```
