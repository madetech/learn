# Test Driven Development

{% capture criteria %}
Test driven development is a practice we make ample use of here at Made Tech. By the end of this course you should be able to:
1. Practically demonstrate disciplined TDD.
2. Describe a broad range of strategies to achieve an acceptable test-suite performance.
3. Describe the family of Test Doubles and can demonstrate how to hand-roll those Test Doubles. Can describe the problems introduced by Test Doubles on Test Design.
4. Refactor a test to make it follow the 4 components of a single Test and also in relation to a suite of tests.
5. Identify smells in test code, and describe why each smell is a problem.
6. Demonstrate strategies to achieve Simulation of a "Remote Service". Can weigh up contextual appropriateness of common tooling (e.g. WebMock, VCR)
7. Describe practical scenarios when TDD is not appropriate. Can explain what to look for when discovering new impractical scenarios.
8. Demonstrate Triangulation and describe its relationship to TDD discipline.
{% endcapture %}
{% include skill_header.html criteria=criteria %}

{% capture resources %}
1. [Demonstrating the Discipline](./discipline.md)
2. [Test Suite Performance](./performance.md)
3. [Test Doubles](./test-doubles.md)
4. [Well-written tests](./well-written-tests.md)
5. [Well-designed tests](./well-designed-tests.md)
6. [Testing remote services](./remote-services.md)
7. [Inappropriate TDD](./inappropriate.md)
8. [Triangulation](./triangulation.md)
{% endcapture %}
{% include skill_resources.html resources=resources %}

## Badges

{% capture giraffe_description %}
TDD a [kata](../../katas) or feature of your choice.  Keeping in mind the mark scheme below.

- Writes a failing test before writing production code
  - Required - Several examples

- Watches the failing test fail for the right reason before writing production code
  - Required - Several examples

- Writes only the minimum production code for a test to pass
  - Required - Several examples of:
    - Sliming production code
    - Writing very minimal production code, until necessary to change by future tests
  - Required - Examples of writing small tests to expose these

- Watches the passing test pass before moving onto refactoring
  - Required - Several examples

- Refactors tests
  - Required - One example of refactoring tests, describing why they are.

- Refactors production code
  - Required - One example of refactoring production code.
  - Required - Can write tests which follow AAAT (Arrange, Act, Assert, Teardown)
  - Required - Demonstration of:
    - Setting up some state first
    - Making an action
    - Asserting on that action
    - Teardown (if applicable)

- Can describe expected behaviours from the perspective of the user.
  - Required - Can write test names which describe the behaviour of the software from a user’s perspective.

- Can describe the situations where using triangulation helps improve test quality.
  - Required - Can explain what the potential flaws of not including triangulation are.
  - Required - Can explain how triangulation overcomes these flaws.

- Can demonstrate triangulation when TDDing an example piece of code.
  - Required - Production code is generalised only when there are failing tests that require generalised production code.
{% endcapture %}
{% include assessment_container.html name="Giraffe" description=giraffe_description img="./giraffe.jpg" %}

{% capture wolf_description %}
You will be shown some preprepared test code, and will need to identify the test double used inside it.

You will need to create a test using each of the 5 test doubles, a Dummy, a Stub, a Fake, a True Mock and a Spy.

You will need to TDD a feature which interacts with a remote service of your choice, e.g. a class which retrieves Tweets from twitter.

- Can identify the type of test double from code they haven’t written.
  - Required - an explanation of a single test double in the existing test suite, including what it is and the purpose it serves in the test.

- Can hand-write each of the test doubles.
  - Required - write an example of a Dummy, a Stub, a Fake, a True Mock and a Spy, describing the purpose each serves.

- Can explain when you should and shouldn’t use test doubles.
  - Required - one example of when a test double is useful.
  - Required - one example of when a test double is NOT useful.

- Can explain why minimizing the number of test doubles a single test case uses is desirable
  - Required - a sensible example of how having too many test doubles can cause problems/problematic tests.

- Can explain benefits of the different ways of testing remote services.
  - Required - Can identify three methods of remote testing.
  - Required - Can explain the pros and cons of each.

- Can implement an appropriate method of testing a remote service.
  - Required - Passing test code which handles a remote service adequately.

- **DEPRECATED, BUT MUST BE ACHIEVED IF NOT DONE IN GIRAFFE** - Can describe the situations where using triangulation helps improve test quality.
  - Required - Can explain what the potential flaws of not including triangulation are.
  - Required - Can explain how triangulation overcomes these flaws.

- **DEPRECATED, BUT MUST BE ACHIEVED IF NOT DONE IN GIRAFFE** - Can demonstrate triangulation when TDDing an example piece of code.
  - Required - Production code is generalised only when there are failing tests that require generalised production code.
{% endcapture %}
{% include assessment_container.html name="Wolf" description=wolf_description img="./wolf.jpg" %}

{% capture dragon_description %}
Review, refactor and improve an existing test suite.

- Can identify smells within the sample apps test code.
  - Required - Can list and explain three valid smells per the invigilator's guide.

- Can describe why test suite performance is important.
  - Required - See invigilator's guide.

- Can identify causes of poor performance in a test suite.
  - Required - Identify two of the secret causes of poor performance.
  - Required - Explain the trade offs that factor into deciding what level of testing to use.
  - Required - Describes some architecture technique(s) which can make testing more flexible.

- Can improve the performance of a slow test suite.
  - Required - Test suite run time is reduced 80% while maintaining the same amount of coverage.
  - Required - Test suite should remain as useful.
  - Required - Well reasoned explanations for all changes to test suite behaviour


- Can write tests around an untested piece of code.
  - Required - Write a suite of tests around a feature of an existing application which
    verifies the feature behaves in the way it does.
  - Required - Does not change the production code before the test suite has been written.
  - Required - Demonstrates that the tests written allow developers to now safely refactor
    the production code.
{% endcapture %}
{% include assessment_container.html name="Dragon" description=dragon_description img="./dragon.jpg" %}
