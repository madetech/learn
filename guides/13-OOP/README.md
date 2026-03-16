# Object Oriented Programming

# What is Object Oriented Programming? 

Object Oriented programming (OOP) is a programming paradigm that relies on the concept of classes and objects. It is used to structure a software program into simple, reusable pieces of code blueprints (usually called classes), which are used to create individual instances of objects.
A class is an abstract blueprint used to create more specific, concrete objects. These classes define what attributes an instance of this type will have, like colour, but not the value of those attributes for a specific object. Unless it is a class variable whereby it belongs to the class rather than the instance. 

Classes can also contain functions, called methods available only to objects of that type. These functions are defined within the class and perform some action helpful to that specific type of object.

An example would be setters and getter methods, which are to get and change the value of the attribute. A setter would set the value of the attribute whilst a getter method would get the value of that attribute.  

# To Do

Go through the exercises to build out a program that will go through the fundamental concepts of object oriented programming. The tips below are written in Ruby, though the concepts introduced here are language agonistic. Two useful concepts to keep in mind is:

- private - Only the current class will have access to the field or method.
- public - Any class can refer to the field or call the method.

Before continuing through these exercises please read through these four pillars of OOP:

- Inheritance: child classes inherit data and behaviors from parent class
- Encapsulation: containing information in an object, exposing only selected information (public and private methods)
- Abstraction: only exposing high level public methods for accessing an object
- Polymorphism: the provision of a single interface to entities of different types or the use of a single symbol to represent multiple different types.

# Excercises 

# 1.0 Encapsulation 

A leading supermarket wants to create a program to more easily identify its different types of customers that have signed up to its members card list. Your first task is to create a class called `Customer`, which will contain all the mandatory attributes a customer will have regardless of what type of customer they are. These attributes are name, age and subscription (which indicates what level of subscription they have).   

Create a new class called `Customer`.

The class should contain the attributes name and age. It should also have the method subscription, which prints out the string 'standard'.

The attribute name should be a string and the age attribute should return a date. 

Then create 3 instances of these objects providing different values to each of the instances.

For example:

```ruby
customer01 = Customer.new("David", Date.new(1990,2,3))
```

Tips:

It may be useful when creating this class to use the the shortcut:
```ruby
Attr_accessor :attribute
```

To create the getter and setter methods. You will also have to initalise the attributes, for an example please check out this link here:

[attr_accessor](https://www.rubyguides.com/2018/11/attr_accessor/)

Example of date object please check out this site:

[date object](https://www.rubyguides.com/2015/12/ruby-time/)

To test whether this class has been successfully created print out the attributes of the instance.

# 2.0 Inheritance 

Above the task was to create a class that would contain all the necessary attributes. This is now your parent class, the class which all other types of customer classes will inherit from. An example would be with a parent class of bird, now penguin is a type of bird but will have unique attributes not shared by other types of birds. So you create a child class called penguin, which will have attributes of its parent class bird but also additional attributes.  

Create a child class called `FreeCustomer` and another called `PremiumCustomer`.

These classes should inherit from the parent class `Customer`.

Then create an instance of both these child classes.

Then create a new attribute to the parent class, city, indicating which city they live in. Then re-initalise the instances with the values of what city the different customers live in. 

For example:
```ruby
customer02 = PremiumCustomer.new("Karen", Date.new(1995,6,7),”Bristol”)
```

Tips:

Example of inheritance:
```ruby
class ChildClass < ParentClass 
```
# 3.0 Polymorphism 

There is many advantages of polymorphism (please click [here](https://teachcomputerscience.com/polymorphism/) for a much more detailed explanation), but for the moment one of its many advantages it helps programmers to reuse the code, classes, methods written once, tested and implemented.

Create a subscription method for your child classes, in the child class `FreeCustomer` it should print out 'free' whilst `PremiumCustomer` should print out 'premium'.  

Depending on what object you initalise the same method will print out different messages.

For example:
```ruby
customer01.subscription # => "standard""

customer02.subscription # => “premium”
```

# 4.0 Bonus Work

- I want it so that  when I pass in the string 'cancelled' to the method subscription to the PremiumCustomer class it will print out the sound attribute of the parent class not the `PremiumCustomer` class

- I want a function that whatever object I pass in, it will print out the name of that customer.

- Create another child class called `EnhancedCustomer`. Now `EnhancedCustomer` and `PremiumCustomer` both have reward points that they get for purchases. I want to create a single method that tells me how many reward points these customers have, but I don’t want them to inherit methods from one another (maybe a module could solve this problem…).

Experiment with these keywords to complete these tasks:

`super` - It calls a method on the parent class with the same name as the method that calls super. 

`self` - gives you access to the current object.

`module` - Modules define a namespace, a sandbox in which your methods and constants can play without having to worry about being stepped on by other methods and constants.

# Reading

- [Practical Object-Oriented Design](https://www.poodr.com/)

- [Duck Typing](https://dev.to/middlebrooks314/duck-typing-1gnn)

- [Factory Pattern](https://www.oreilly.com/library/view/head-first-design/0596007124/ch04.html)
