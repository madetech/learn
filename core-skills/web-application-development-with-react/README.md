# Web Application Development with React

{% capture criteria %}
React is a web framework we make use of here at Made Tech. By the end of this course you should be able to:

1. Describe situations where you should/shouldn't decide to use React for a project
2. Setup a React project from scratch in a repeatable way
3. Describe the different parts of the Javascript ecosystem (e.g. NPM, Webpack, etc)
4. Demonstrate using TDD on business logic within a React code base
5. Demonstrate strategies to achieve clear separation of business logic and display logic
   with React components
6. Demonstrate applying sensible styling to React components
7. Demonstrate strategies and tools to run tests against an API within a React application

## Assessment Style

This core skill assessment is split into two parts. The first of which being an application which will be written
during Learn Tech and brought along with you, and the second being questions to test your understanding of React.

Each section of the mark scheme will be separated into their respective categories.

Example answers for the questions can be found on the hidden marking guide; however, we do not require exact matches. It
is up to the assessor to determine whether or not the candidate has adequetly answered the question.

### The Application

Build an app which communicates with an API, either one you write your own (you dont need to implement the API)
or one that already exists, see: [https://github.com/toddmotto/public-apis](https://github.com/toddmotto/public-apis)

{% endcapture %}
{% include skill_header.html criteria=criteria %}

{% capture resources %}
1. [React - Why and when?](./why-and-when.md)
2. [Setting up a React project](./setup.md)
3. [React Fundamentals](./fundamentals/README.md)
{% endcapture %}
{% include skill_resources.html resources=resources %}

## Mark Scheme

{% capture hedgehog_description %}
Learning the fundamentals - How not to hurt yourself with React

#### Application

The candidate has:

- Created an application that is independent of the node install on the candidates machine
- A make recipe for serve, which runs the application in development mode
- A make recipe for test, which runs the tests for the application
- A sandbox environment which allows them to quickly prototype components
- The ability to hot-reload based on changes
- A failing test that appears when running make test

#### Understanding

The candidate can describe:

- Situations where React would be beneficial
- What a React component is
- What component props are
- What component state is
- What `props.children` refers to
- How React allows you to respond to user events
- One approach to styling react components
- What causes a component to rerender
- A lifecycle method that you can hook into and perform actions on
- How to manage state shared between multiple components, avoiding passing state between many components
{% endcapture %}
{% include assessment_container.html name="Hedgehog" description=hedgehog_description img="./hedgehog.png" %}

{% capture fox_description %}
#### Getting crafty with React - Creating some components for your users

For this level you will be expected to bring along with you an application which contains a set of components which meet the marking criteria.

During the assessment, the reviewer will go through your application with you, asking for demonstrations of the crtieria, and ask some follow up questions.

#### Application - Mark scheme

- The candidate has created an application which contains a component:
    - That uses makes use of the `key` prop
    - Without any props of state
    - Which makes use of a function passed in as a prop
    - Which renders differently based on state
    - Which changes state in response to an onClick event
    - Which has been styled without the use of global styles
    - A component which renders differently based on the following prop types being passed in:
      - A boolean
      - A string
      - The `children` prop

#### Understanding - Mark scheme

The candidate can describe:

- What the `key` prop is used for.
{% endcapture %}
{% include assessment_container.html name="Fox" description=fox_description img="./fox.png" %}

{% capture owl_description %}
#### Getting wise with React - Integrating with remote services

For this level you are expected to demonstrate the ability to test both your React
components and any business logic used for communicating with remote services. It will
also cover demonstrating best practice around the separation of business logic and UI
logic.

During the assessment, your reviewer will go through your application asking for
demonstrations of the criteria.

#### Application - Mark scheme

The candidate should create a React application which satisfies the following.

- Has a component which displays data to the user which has been fetched from an API
  - Candidate should showcase their component to assessor.
  - Candidate should walk assessor through tests which give maintainers confidence
    that the component displays data from an API.
- Has a form component which takes information from the user and submits said information
  to an API.
  - Showcase the form component to the assessor.
  - On form submission the browser should send JSON to the API endpoint.
  - Walk the assessor through tests that give maintainers confidence that the
    component submits the data to the API.
- There should be a JS layer of indirection between the components and the API
  - Showcase standalone code which makes HTTP API requests, and tests which
    cover this.
  - Showcase tests which prove minimal coupling between the component and API interface.
- Component tests should have minimal coupling to the markup they render.
  - Candidate should showcase their use of test specific html attributes in the test suite
    to achieve this.
{% endcapture %}
{% include assessment_container.html name="Owl" description=owl_description img="./owl.png" %}
