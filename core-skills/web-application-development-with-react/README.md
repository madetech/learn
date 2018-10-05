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

Example answers for the questions can be found on the hidden marking guide; however, we do not require exact matches. It
is up to the assessor to determine whether or not the candidate has adequetly answered the question.

### The Application

Build an app which communicates with an API, either one you write your own (you dont need to implement the API)
or one that already exists, see: https://github.com/toddmotto/public-apis

## Mark Scheme

### Hedgehog

Learning the fundamentals - How not to hurt yourself with React

#### Application

The candidate has:

- Created an application that is independent of the node install on the candidates machine
- A make recipe for serve, which runs the application in development mode
- A make recipe for test, which runs the tests for the application
- A sandbox environment which allows them to quickly prototype components
- The ablity to hot-reload based on changes
- A failing test that appears when running make test

#### Understanding

The candidate can describe:

- Situations in which using React would be a benefit
- What a React component is
- What are props within a component
- What is state within a component
- What `props.children` refers to
- How React allows you to respond to user events
- One approach to styling react components
- What causes a component to rerender
- Describe a lifecycle method that you can hook into and perform actions on
- An approach to managing Application state

### Fox

#### Getting crafty with React - Creating some components for your users

For this level you will be expected to bring along with you an application which contains a set of components which meet the marking criteria.

During the assessment, the reviewer will go through your application with you, asking for demonstrations of the crtieria, and ask some follow up questions.

#### Application - Mark scheme

- The candidate has created an application which contains:
  - A component without any props or state
  - A use of the `key` prop
  - A component which makes use of a function passed in as a prop
  - A component which renders differently based on state changes
  - A component which changes state in response to an onClick event
  - A component which has been styled without the use of global styles
  - A component which renders differently based on the following prop types being passed in:
    - A boolean
    - A string
    - The `children` prop

#### Understanding - Mark scheme

The candidate can describe:

- What the `key` prop is used for.

### Owl

#### Getting wise with React - Integrating with remote services

For this level you are expected to demonstrate the ability to test both your React 
components and any business logic used for communicating with remote services. It will
also cover demonstrating best practice around the separation of business logic and UI
logic.

During the assessment, your reviewer will go through your application asking for
demonstrations of the critera.

#### Application - Mark scheme

The candidate should create a React application which satisfies the following.

- Has a component which displays data to the user which has been fetched from an API
  - Candidate should showcase their component to assessor.
  - Candidate should walk assessor through tests which give maintainers confidence
    that the component displays data from an API.
- Has a form component which takes information from the user and submits said information
  to an API.
  - Candidate should showcase their form to assessor.
  - Candidate should demonstrate that the API has recieved information successfully
  - Candidate should walk assessor through tests which give maintainers confidence 
    that the component submits the data from the form to the API.
- There should be a JS layer of indirection between the components and the API
  - Candidate should showcase standalone code which makes HTTP API requests, and tests which
    cover this.
  - Candidate should showcase tests which prove minimal coupling between the component and API interface.
- The application should have component tests should have minimal coupling to markup they render.
  - Candidate should showcase their use of test specific html attributes in the test suite
    to achieve this.