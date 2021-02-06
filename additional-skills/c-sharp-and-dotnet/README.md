# C# and .NET Core

## Who is this skill for?

This skill is intended for developers who have already completed the TDD core skill, and who have not worked with .NET previously (or want to brush up) and are likely to join a delivery team that is working in C#.
Through this course, we'll be making some assumptions that you're already familiar with at least one programming language (static typed or dynamic).

## Summary
On achieving the following badges, we'd expect you to have gained the following skills:

### Mantis Shrimp
1. Can set up a working project in .NET using an IDE
2. Can install and manage dependencies for the project
3. Can create and run unit tests using a test framework
4. Understands basic concepts of the C# language and ecosystem

### Goat
1. Understands some deeper object oriented programming concepts
2. Able to demonstrate common design patterns implemented using C# language features
3. Understands how to build API functionality using common frameworks (MVC, EF)
4. Understands how to use the dotnet command line utilities to perform common tasks
5. Can effectively debug using the interactive debugger (IDE)

### Eagle
1. Can demonstrate an understanding of functional programming in C#
2. Understanding of the .NET virtual machine
3. Understanding the impact of choices on performance
4. Can demonstrate ability to combine understanding of the above into a working API in C# with .NET

## Resources
Coming soon

## Mark Schemes
{% capture mantis_description %}
The candidate:
- Can explain what .NET is
- Can explain the difference between .NET Core and Framework
- Can explain what the .NET Standard is
- Can explain the difference between C#, Visual Basic and F#
- Can explain what assemblies and artefacts are
- Can explain the concept of classes with examples of usage
- Can explain the concept of interfaces with examples of usage
- Can explain the concept of inheritance with examples of usage

- Can create a new C# project
- Can install and manage external project dependancies
- Can build and run the project
- Can manage internal project dependancies
- Can create a test project and a suite of tests that test some functionality
- Demonstrates use of classes, interfaces and inheritance
- Demonstrates the use of scope/access modifiers

Expected deliverable - simple application with a test that satisfies the above
{% endcapture %}
{% include assessment_container.html name="Mantis Shrimp" description=mantis_description img="./mantis.jpg" %}

{% capture goat_description %}
The candidate:
- Can explain the concept of generics and generic type constraints with examples of usage
- Can explain the usage of the abstract, virtual, and override keywords with examples
- Can explain the concept of polymorphism with examples of usage

- Can demonstrate using the `dotnet` command line utility to build and run the project and tests
- Can demonstrate the use of IDE tooling for refactoring code

- Can demonstrate understanding and implementation of exception handling
- Can demonstrate understanding and implementation of asynchronous programming
- Can demonstrate understanding and implementation of LINQ query syntax and method syntax
- Can demonstrate understanding and implementation of data persistence using a database
- Can demonstrate effectively debugging using an interactive debugging tool

Expected deliverable - HTTP API that can take a request and persist some data from that request demonstrating the above
{% endcapture %}
{% include assessment_container.html name="Goat" description=goat_description img="./goat.jpg" %}

{% capture eagle_description %}
Disclaimer - The C# skill is not a core skill, it is advanced learning. If the goal is to know enough to join a delivery, this is satisfied having achieved Goat.
Eagle is a space to demonstrate a deeper understanding of OO programming and implementing clean, maintainable code in C#.

The candidate:
- Can write implementation code and tests that facilitate maintenance and change, using TDD and Clean Architecture. Implementation should follow SOLID principles.

- Can explain at a high level how the .NET virtual machine works
 - Can explain memory management and garbage collection
 - Can explain intermediate language and compilation
- Can explain common performance detriments in C# code and some potential ways to write performant C#, particularly in the context of APIs serving web requests.

- Can demonstrate some functional programming in C#
 - Can demonstrate use of delegates

Expected deliverable - A C# application that showcases an understanding of all the above points (this is intentionally open ended to allow for some flexing! Refer to the marking guide and look for clean, SOLID code with good testing strategies).
{% endcapture %}
{% include assessment_container.html name="Eagle" description=eagle_description img="./eagle.jpg" %}
