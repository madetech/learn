{% capture content %}
# React Fundamentals

## Summary

React is a framework with a number of moving parts, components, states, props, etc. It
can be very easy to begin writing components without properly understanding how each of
these should be used and how to use them.

An Engineer who has passed this core skill would be expected to understand what each of these
parts are, and when to use one over the other (i.e. When should you put something in a prop instead
of the state).

The first two sections of React's documentation, [JSX](https://reactjs.org/docs/introducing-jsx.html) and [Rendering](https://reactjs.org/docs/rendering-elements.html) are important reading.

- [Components and Props](https://reactjs.org/docs/components-and-props.html)
- [State and Lifecycle](https://reactjs.org/docs/state-and-lifecycle.html)
- [Children](https://mxstbr.blog/2017/02/react-children-deepdive/)
- [Event Handling](https://reactjs.org/docs/handling-events.html)
- Handling Application State
  - To handle application state, you can either use something like the [React Context API](https://reactjs.org/docs/context.html),
    or look into a library such as [Redux](https://redux.js.org/introduction)
{% endcapture %}
{% include legacy_markdown_container.html content=content %}
