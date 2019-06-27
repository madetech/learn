# Bowling

Create a program, which, given a valid sequence of rolls for one line of American Ten-Pin Bowling, produces the total score for the game. Here are some things that the program will not do:

* We will not check for valid rolls.
* We will not check for correct number of rolls and frames.
* We will not provide scores for intermediate frames.

Depending on the application, this might or might not be a valid way to define a complete story, but we do it here for purposes of keeping the kata light. I think you’ll see that improvements like those above would go in readily if they were needed for real.

We can briefly summarize the scoring for this form of bowling:

Each game, or “line” of bowling, includes ten turns, or “frames” for the bowler.

* In each frame, the bowler gets up to two tries to knock down all the pins.
* If in two tries, the bowler fails to knock them all down, their score for that frame is the total number of pins knocked down in their two tries.
* If in two tries the bowler knocks them all down, this is called a “spare” and their score for the frame is ten plus the number of pins knocked down on their next throw (in their next turn).
* If on their first try in the frame the bowler knocks down all the pins, this is called a “strike”. Their turn is over, and their score for the frame is ten plus the simple total of the pins knocked down in their next two rolls.
* If the bowler gets a spare or strike in the last (tenth) frame, the bowler gets to throw one or two more bonus balls, respectively. These bonus throws are taken as part of the same turn. If the bonus throws knock down all the pins, the process does not repeat: the bonus throws are only used to calculate the score of the final frame.
* The game score is the total of all frame scores.

## References 

[codingdojo.org](http://codingdojo.org/kata/Bowling/)
