# Web Application Development with React

## Aim

This course is intended to guide learning to a level where you could write and contribute to a functional, maintainable React application. Starting with the basics of React, through to designing, building and testing in a maintainable way.

## Summary

1. Can describe situations where you should/shouldn't decide to use React for a project
2. Can setup a React project from scratch in a repeatable way
3. Can describe the different parts of the Javascript ecosystem (e.g. NPM, Webpack, etc)
4. Can demonstrate using TDD on business logic within a React code base
5. Can demonstrate strategies to achieve clear separation of business logic and display logic
with React components
6. Can demonstrate applying sensible styling to React components
7. Can demonstrate strategies and tools to run tests against an API within a React application

## Sections

1. [React - Why and when should I use it?](./why-and-when.md)
2. [Setting up a React project](./setup.md)
3. [React Fundamentals](./fundamentals/README.md)
4. Prototyping React Components - Coming soon
5. Styling React Components - Coming soon

## Assessment Style

This core skill assessment is split into two parts. The first of which being an application which will be written
during Learn Tech and brought along with you, and the second being questions to test your understanding of React.

Each section of the mark scheme will be separated into their respective categories.

Example answers for the questions be found on the hidden marking guide, however we do not require exact matches. It 
is up to the assessor to determine whether or not the candidate has adequetly answered the question. 

### The Application

Build an app which communicates with an API, either one you write your own (you dont need to implement the API)
or one that already exists, see: https://github.com/toddmotto/public-apis


## Mark Scheme

### Hedgehog

Learning the fundamentals - How not to hurt yourself with React

#### Application

The candidate has:
- Has created an application that is independent of the node install on the candidates machine 
- Has a make recipe for serve, which runs the application in development mode
- Has a make recipe for test, which runs the tests for the application
- Has a sandbox environment which allows them to quickly prototype components
- Has the ablity to hot-reload based on changes 
- Has a failing test that appears when running make test

#### Understanding

The candidate can describe:

- Situations in which using React would be a benefit
- What a React component is
- What are props within a component
- What is state within a component
- What children are within a component
- How React allows you to respond to user events
- One approach to styling react components
- The component lifecyle
- An approach to managing Application state

### Fox

Getting crafty with React - Creating some components for your users

- The candidate has created an application which contains:
  - A component without any props or state
  - A component which renders differently based on the following prop types being passed in:
    - A boolean
    - A string
    - A function
    - The `children` prop
  - An appropriate use of the `key` prop
  - A component which renders differently based on state changes
  - A component which changes state in response to an onClick event
  - A component which has been styled without global styles

### Owl

**Coming soon - Notes for the future**

Owl is intended to demonstrate the ability to write tests for your application, and to integrate with external services in
order to make a more feature rich application.

Will also test componentDidMount calling APIs

Forms for posting

- Architecture
  - The candidate can explain the following;
    - Communicating with APIs
    - Division of business logic, domain, rendering and state
    - How to test component rendering
    - How to test business logic

**Coming Soon - Owl is intended to demonstrate ability to put understanding of advanced architecture
principles and testing strategy into practice**
