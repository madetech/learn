# Practice TDD

Once you understand the basics of Test Driven Development, you'll need to practice to gain experience.

You can do that by practicing code [katas](../katas/), by [sparring](../sparring/) or by using it in your everyday work.

However, the most beneficial practice, is "Deliberate Practice" which must be:

* Goal Directed, and have opportunity for:
* Feedback, and
* Self-reflection 

It may be difficult to find opportunity to get all of these things in your every day work.

If that is the case, then you must find other opportunities.

## Simple design

Practice simple design:

1. Passes its tests
2. Minimizes duplication (of concepts) 
3. Maximizes clarity (revealing intent)
4. Has fewer elements (exactly what you need)

## Constraints

A good way to get more value out of code [katas](../katas/) is to place constraints on how you solve it.

[Adrian Bolboaca](http://blog.adrianbolboaca.ro/) has put together a very useful list of constraints in this [Coderetreat list of constraints](https://drive.google.com/drive/folders/0B3idvASFqaEbN2RkNDYyYjktYTlkZi00ZjFiLWFmMDEtNjJhYTBkYzM2ZDlh).

We repeat some of them here for reader's convenience:

### Quality code constraints

* Max 4 lines of code per method
* No predefined data structures
* No conditionals
* No primitives exposed
* No loops

### TDD as if you meant it

1. Write one failing test describing a behaviour of your system
2. Make it pass by writing implementation code in the test function
3. When duplication is spotted extract implementation from tests to:
  i. a new field in the test class
  ii. a new function in the test class
  iii. an existing function in the test class
4. When more functions belong together extract them into a new class
5. Refactor as required

### Taking baby steps

1. Setup source control repository.
2. Setup a timer for 2 minutes interval when you start.
3. _Write exactly one test._ If the:
  i. **timer rings** and the **test is red** then **revert** and **start over**.
  ii. **test is green** before timer rings then **commit**.
4. Restart timer (no discussions in between timers)
5. Refactor. If the:
  i. **timer rings** and the **refactoring is not complete** then **revert** and **start over**.
  ii. **refactoring is complete** before the timer rings then **commit.**
6. Restart the timer (no discussions in between timers)
7. Go to 3.
8. When session time is up delete the code.

The timers should run continuously, don't stop to chat!

*Goals*

* Focused on single task
* Minimize programmers’ mistakes
* Minimize time wasted on trying an approach. Use a couple of short commits rather than a couple of hours to get feedback about the idea
* Understand how a bigger problem can be split in smaller simpler problems
* Tackle difficult problems in simpler problems that are easier to solve
* Have a clear path of dealing with a problem, structured in many commits and visible in the commit message log
* Get used to throwing away code when your idea is not yet fully formed

### Programming by Wishful Thinking

[Blog post by Adrian Bolboaca](http://blog.adrianbolboaca.ro/2016/04/programming-by-wishful-thinking)

1. Find a real-life scenario from top to bottom
2. Write an acceptance test on the scenario
3. Write the first unit test at the top
4. Whenever your test or implementation needs something, create a stub
5. Go on writing next unit test until you reach the bottom layer
6. Make the real-life scenario test pass
7. Go to 1. Only implement the stubs that you need for your vertical slice

### Ping-Pong pair programming

#### With Timebox

Two Roles: Driver & Navigator

Driver = the person who writes the code
Navigator = helps the driver for code strategy

Rule: every maximum 5 minutes the roles change

#### With Tests

* A writes a new test and sees that it fails.
* B implements the code needed to pass the test.
* B writes the next test and sees that it fails.
* A implements the code needed to pass the test.

#### Evil Coding

Do Ping-Pong pair programmign with tests, but;

**Rules**

1. The driver write a test
2. The navigator becomes driver
3. The new driver implements the test in an evil way, not following the intention of the test
4. The new driver writes a test
5. Again the navigator becomes driver
6. The new driver writes some evil implementation
… so on

#### Mute Pairing

You are not allowed to talk with your pair
No electronic or physical writing is allowed
Any communication will be made through code

#### Yes, and...

When pairing you are not allowed to delete code

Any change in the existing code is made by Refactoring,
Adding the existing code

Any of the pairs will say “Even if I don’t agree with this code,
Yes I accept it and I can improve it by ....”

### Solution Seeker

[Blog post by Adrian Bolboaca](http://blog.adrianbolboaca.ro/2014/02/pair-programming-game-solution-seeker)

Start your session by finding possible angles of solving the problem
You need at least three different solutions before starting
Make an analysis which of the solutions is better
Start only after you have an hypothesis why one solution is better

### No Primitives

You have to encapsulate the:

Arrays
Other data structures

Integer
String
Boolean
Other primitives

### Brutal refactoring game

1. Lack of tests
2. Feature envy
3. Name not from domain
4. Method too long (> 6 lines)
5. Name not expressing intent
6. Too many parameters (> 3)
7. Unnecessary if
8. Test – not unitary
9. Unnecessary else
10. Test – setup too complex
11. Duplication of constant: Magic Number
12. Test – unclear Act
13. Method does more than one thing
14. Test - more than one assert
15. Primitive obsession
16. Test – no assert
17. Test – too many paths

During this session the facilitator is very intrusive. The facilitator is the Benevolent Dictator that cares about good quality code. While coding the facilitator will stop you whenever (s)he spots a coding smell, from the list above. Adding functionalities is forbidden until the pair refactors the smell away. The pair is allowed to add new functionality only when the code smell removal was approved by the facilitator. 

I use post-its on which I write the coding smell, and stick it on the desk of that pair. When the pair has removed the coding smell away I encourage them to rip the post-it with an evil laughter and say “I killed you, evil coding smell!”

I also give “Disagreement index cards” where the pairs can write why they did not agree with the Benevolent Dictator, and we use them to talk during the retrospective of the session.

See more:

[here](http://blog.adrianbolboaca.ro/2013/04/the-history-of-brutal-refactoring-game) and [here](http://blog.adrianbolboaca.ro/2013/07/brutal-refactoring-game)

### Single Responsibility Principle

* A method has more functionalities add all in the method’s name with use or/and to separate them
* The method name has and/or then split the method
* No conditionals: if, switch, etc
* No try/catch

* Exactly one assert per test
* Test one behaviour per test

### Event Driven Only

Object Oriented Programming to Event Driven Development

All the connections between structures are done with events

