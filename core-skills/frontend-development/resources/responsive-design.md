{% capture content %}
# Responsive Design

## What does it mean for a design to be 'responsive'?
Your site/app _responds_ to the screen it's being browsed on.

More generally, it's about _responding to user need_, but screen size is the most common consideration.

## What's this 'viewport' that people keep mentioning?

Your user's _viewport_ is their view of your site, which may be smaller than all of the content you're trying to show.

## Why should I care about responsive design?

If you have to work to adjust your site for only some of your users, you're spending time (and money!) not providing value to _the rest_ of your users.

The most efficient way to build things is to make them usable by _everyone_. This won't always be practical, but it's a good starting point.

It's also the best way to build things for the long-term. How people browse the web will continue to evolve in ways we haven't predicted.

## Why should I design 'mobile-first'?

This is often justified by the increasing number of people browsing on mobile devices.

Even if your site isn't heavily used on mobile right now, it's still worth considering, because _doing the hardest thing first tends to lead to better results_.

**Restrictions breed creativity**. You'll often find simpler and more efficient ways to present your content if you start without the freedom of a large viewport.

## What are some techniques I can use to achieve a responsive design?

- Design for smaller viewports first (this is sometimes called 'mobile-first')
- Change some components at certain size breakpoints using [media queries](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries)
- Use modern styling techniques like [the CSS flexbox layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox)
- Use a styling framework with responsivity built-in, like [Bootstrap](https://getbootstrap.com/) or [Foundation](https://foundation.zurb.com/)

## Where can I learn more?

[Responsive Web Design Basics](https://developers.google.com/web/fundamentals/design-and-ux/responsive) from Google's "Web Fundamentals" guide.

Ethan Marcotte, coiner of the term "Responsive Design", [going into some detail about why it's important](https://alistapart.com/article/responsive-web-design).

A [Government Digital Service blog post](https://gds.blog.gov.uk/2012/11/02/designing-for-different-devices) diving into how to use some of the techniques.
{% endcapture %}
{% include legacy_markdown_container.html content=content %}
