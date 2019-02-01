# Unit Testing React Components

## Introduction

One of the benefits of using React over more traditional server rendered approaches
is the ability to unit test each component in isolation. However, it is sometimes not entirely clear
how to best approach unit testing a React component.

## Things to consider

### What to test

Much like when unit testing a class, you want to be testing the observable outputs of running something. For example, a use case which calls a gateway. You will test the gateway was called, the use case returned
what you expected, but not the internal state during execution.

Similarly, with a React component it can be tempting to test things such as the internal state, but
you instead want to test the observable outputs. This is most likely going to be something displaying
(or not displaying) on the page as a result of various props, or user interactions. You are also most
likely going to want to test that something happens when components are mounted, or that they can call
various props given to them.

### What not to test

Frontend tests can be brittle if you test the wrong things, for example, what a header says. If this is
static text that isn't tied to any behaviour you shouldn't test this, as it could be changed and cause
test failures.

### Enzyme - Mount vs Shallow

<< mount vs shallow, mount is more consistent as shallow is similar to mocking classes you don't own >>

## Testing Examples

Here are some examples of components and their tests, ranging from very simple (A stateless component
which simply renders out text), to more complex components.

Before reading these it would be a good idea to familiarise yourself with Enzyme, as we will be using that heavily in these examples.

These tests are also hosted on [Github]('https://github.com/madetech/react-testing-examples')

<< note: pull the techniques (eg data test) into a separate section/file? >>

### Example one - A component which displays a name

Testing a component which takes a single prop, name, and displays it on the page.

**NameDisplay/index.js**

```jsx
import React from "react";

export default props => <div data-test="name">{props.name}</div>;
```

**NameDisplay/nameDisplay.test.js**

```jsx
import React from "react";
import { mount } from "enzyme";
import NameDisplay from ".";

describe("<NameDisplay>", () => {
  it("Displays the name on the page", () => {
    let display = mount(<NameDisplay name="Test" />);

    expect(display.find({ "data-test": "name" }).text()).toEqual("Test");
  });
});
```

#### Important things to note

**The `data-test` attribute**

In order to test what is being displayed, we need to be able to find it with the Enzyme `find` method.
Historically, frontend testing has been tied to attributes such as the CSS class, or the ID of the element.
However, this can cause your tests to break as a result of unrelated changes. A test tied to the CSS selector
will break if you ever change the css class, or element type. A test tied to an ID will break if you ever need
to change the ID for any reason (for example, to keep it unique on the page).

To avoid this brittleness, we can use an attribute specifically for identifying DOM elements within a page,
which in the above example is the `data-test` attribute. This allows us to change CSS classes, ID's, or even the entire structure of the page, without causing test breakages. Allowing for much quicker development whilst
still ensuring your test suite provides good coverage.
