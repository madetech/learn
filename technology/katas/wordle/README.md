# Wordle


Create a program, which, given a 5 character string as a target word, and a 5 character string as a guess, return a 5 character string where:
```
‘2’ = this letter is in this position
‘1’ = this letter is in the target word but not this position
‘0’ = this letter is either not in the target word, or is not in the target word as many times as it is in the guess
```

## Examples

### No matching characters
```
Target = “ropes”
Guess  = “child”
Result = “00000”
```

### Characters match in correct positions
```
Target = “alert”
Guess  = “alarm”
Result = “22020”
```

### Character in wrong position
```
Target = “stair”
Guess  = “chore”
Result = “00010”
```

### Mix of match and wrong position
```
Target = “hairy”
Guess  = “charm”
Result = “01120”
```

### Multiple characters in wrong positions
```
Target = “reads”
Guess  = “elect”
Result = “10000”
```


