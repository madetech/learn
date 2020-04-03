# Well-written tests

An Engineer with this core skill must be able to demonstrate how to write readable tests.

Talk about the audience of your tests. (end user that uses the behaviour of the program)

A common pattern to achieve readable tests, is to structure it into 4 components:

* Arrange [optional]
* Act
* Assert
* Teardown [optional]

To achieve readability, each of these components needs to be clearly identifiable through self-explanatory descriptors.

To avoid repetition use of helper methods, common setup/teardown before/after blocks should be used to group common behaviours.  This also has the benefit of aiding the identifiability of each component.

## Reading material

* [Four-Phase Test - Gerard Meszaros](http://xunitpatterns.com/Four%20Phase%20Test.html)
* [https://blog.codecentric.de/en/2016/01/writing-better-tests-junit/](https://blog.codecentric.de/en/2016/01/writing-better-tests-junit/)
  * Nice primer but does contain broken links.

## Marking scheme

* Can write tests which follow the AAAT
* Can describe expected behaviours from the perspective of the user
* Can refactor poorly written test suite to remove duplication
