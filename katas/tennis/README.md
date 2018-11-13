# Tennis

This Kata is about implementing a simple tennis game. 

Rather than using standard Tennis scoring, **we consider scoring in Wii tennis**, which has a simplified version of tennis, so each set is one game.

The scoring system is as follows:

1. Each player can have either of these points in one game 0 15 30 40

2. If you have 40 and you win the ball you win the game, however there are special rules.

3. If both have 40 the players are deuce. 
  - a. If the game is in deuce, the winner of a ball will have advantage and game ball. 
  - b. If the player with advantage wins the ball they win the game 
  - c. If the player without advantage wins they are back at deuce.

## Alternative description of rules

1. A game is won by the first player to have won at least four points in total and at least two points more than the opponent.

2. The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as “love”, “fifteen”, “thirty”, and “forty” respectively.

3. If at least three points have been scored by each player, and the scores are equal, the score is “deuce”.

4. If at least three points have been scored by each side and a player has one more point than their opponent, the score of the game is “advantage” for the player in the lead.

## Reference

[codingdojo.org](https://codingdojo.org/kata/Tennis/)
