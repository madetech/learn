# When is TDD inappropriate

## Validation of correctness cannot be obtained via an automated check.

Sometimes you can find a proxy for "correctness" which will make you feel like TDD is possible.
If you aren't feeling confident that your tests are guarding against regression, this is a signal that you shouldn't be using TDD.

Graphical UIs are an example of software not suitable for TDD, they are usually defined in a markup language which can only be asserted for correctness by visually inspecting the rendered output.
There may still be some tests which are useful to add to your UI components, e.g. an automated accessibility checker, but this shouldn't replace a professional accessibility audit of your product.

Configurations are also not suitable for TDD, their correctness can only be ascertained by testing the configuration in conjunction with whatever they are configuring.
State machines are configuration. Unit testing is still important, but the discipline of TDD is not.

## Testing feedback cycles are slow

Some software is hard to test because of inadequate test tooling.
A slow test driven development cycle is painful and unproductive.
Appropriate TDD makes your development cycle faster via fewer defects, and testable code.
Weigh up the benefits of test driven development vs the cost of delaying your development in this scenario.

Investing time into researching how to create fast feedback cycles can have huge gains in productivity.

## Marking Scheme

* Does not TDD markup (e.g. HTML, LaTeX).
