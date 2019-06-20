{% capture content %}
# Inappropriate TDD

Graphical UIs are not suitable for TDD, they are usually defined in a markup language which can only be asserted for correctness by visually inspecting the rendered output.

Configurations are not suitable for TDD, their correctness can only be ascertained by testing the configuration in conjunction with whatever they are configuring.

State machines are configuration? Unit testing is still important, but the discipline of TDD is not.

## Marking Scheme

Does not TDD markup.
{% endcapture %}
{% include legacy_markdown_container.html content=content %}
