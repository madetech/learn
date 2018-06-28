# Well-designed tests

An Engineer with this core skill must be able to demonstrate good Test Design.

* Avoid tight coupling between test code and production code
* Conciseness of test suite 
	* Maximizing behaviours tested by 1 suite
	* Minimizing audiences that a test suite speaks to

### Conciseness

Something about conciseness.

### Coupling between Test Cases and Production Code

Engineers that consider coupling avoid causing unnecessary code churn induced by too much tight coupling.

If there is one call-site to a particular function then that function is easy to change

It is desirable to ensure that the public interface of production code can evolve at a different rate to the test cases. 

Conversely it is not desirable to need to update all your test cases to change the public interface

## Reading Material

* [Smells in Test that indicate Design problems - AgileFAQs](https://blogs.agilefaqs.com/2009/02/01/smells-in-test-that-indicate-design-problems/)

## Marking scheme

* Can identify smells within code they have written.
* Can identify smells within somebody else's code.
* Can explain the balancing act of achieving conciseness of a test suite

