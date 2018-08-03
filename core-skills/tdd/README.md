# Test Driven Development

## Summary

1. Can demonstrate using the discipline of TDD by doing it.
2. Can describe a broad range of strategies to achieve an acceptable test-suite performance.
3. Can describe the family of Test Doubles and can demonstrate how to hand-roll those Test Doubles. Can describe the problems introduced by Test Doubles on Test Design.
4. Is able to refactor test to make it follow the 4 components of a single Test and also in relation to a suite of tests.
5. Can identify smells in test code, and describe why each smell is a problem.
6. Can demonstrate strategies to achieve Simulation of a "Remote Service". Can weigh up contextual appropriateness of common tooling (e.g. WebMock, VCR)
7. Can describe practical scenarios when TDD is not appropriate. Can explain what to look for when discovering new impractical scenarios.
8. Can demonstrate Triangulation and describe its relationship to TDD discipline.

## Sections

1. [Demonstrating the Discipline](./discipline.md)
2. [Test Suite Performance](./performance.md)
3. [Test Doubles](./test-doubles.md)
4. [Well-written tests](./well-written-tests.md)
5. [Well-designed tests](./well-designed-tests.md)
6. [Testing remote services](./remote-services.md)
7. [Inappropriate TDD](./inappropriate.md)
8. [Triangulation](./triangulation.md)

## Mark Scheme

In combination with [madetech/core-skill-tdd](https://github.com/madetech/core-skill-tdd) repository.

### Giraffe 

![Giraffe](./giraffe.jpg)

Show me some chirps.

- [ ] Writes a failing test before writing production code
  - Required - Several examples of this.

- [ ] Watches the failing test fail for the right reason before writing production code
  - Required - Several examples of this.

- [ ] Writes only the minimum production code for a test to pass
  - Required - Several examples of sliming production code, or writing very minimal production code, until necessary to change by future tests. Examples of writing small tests to expose these.

- [ ] Watches the passing test pass before moving onto refactoring
  - Required - Several examples of this.

- [ ] Refactors tests 
  - Required - One example of refactoring tests, describing why they are.

- [ ] Refactors production code
  - Required - One example of refactoring production code.
  - Can write tests which follow the AAAT (Arrange, Act, Assert, Teardown)
  - Required - Demonstration of setting up some state first, making an action, and asserting on that action. Teardown is optional if it is not required by the test suite (e.g. RSpec)

- [ ] Can describe expected behaviours from the perspective of the user
  - Required - Can write test names which describe the behaviour of the software from a user’s perspective.

### Wolf

![Wolf](./wolf.jpg)

Is the chirps tweet deleted feature?

- [ ] Can identify the type of test double from code they haven’t written.
  - Required - an explanation of a single test double in the existing test suite, including what it is and the purpose it serves in the test.

- [ ] Can hand-write each of the test doubles.
  - Required - write an example of a Dummy, a Stub, a Fake, a True Mock and a Spy, describing the purpose each serves.

- [ ] Can explain when you should and shouldn’t use test doubles.
  - Required - one example of when a test double is useful.
  - Required - one example of when a test double is NOT useful.

- [ ] Can explain why minimizing the number of test doubles a single test case uses is desirable
  - Required - a sensible example of how having too many test doubles can cause to problems/problematic tests.

- [ ] Can explain benefits of the different ways of testing remote services.
  - Required - Can identify three methods of remote testing.
  - Required - Can explain the pros and cons of each.

- [ ] Can implement an appropriate method of testing a remote service.
  - Required - Passing test code which handles a remote service adequately. 

- [ ] Can describe the situations where using triangulation helps improve test quality.
  - Required - Can explain what the potential flaws of not including triangulation are.
  - Required - Can explain how triangulation overcomes these flaws.

- [ ] Can demonstrate triangulation when TDDing an example piece of code.
  - Required - Production code cannot be easily slimed, due to the use of triangulation.

### Dragon

![Dragon](./dragon.jpg)

Refactor dem code.

- [ ] Does not TDD markup.
  - Required - No example of this, unless explained with good reason.

- [ ] Can identify smells within code they have written.

- [ ] Can identify smells within somebody else's code.

- [ ] Can explain the balancing act of achieving conciseness of a test suite

- [ ] Can describe why test suite performance is important.

- [ ] Can identify structural defects that result in poor test suite performance.

- [ ] Can identify that a test suite has poor test suite performance.

- [ ] Can refactor poorly written test suite to remove duplication

- [ ] Can improve the performance of a slow test suite.

