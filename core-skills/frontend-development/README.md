{% capture content %}
# Frontend web development [HTML/CSS]

## Aim
This course is intended to guide learning to a level where you can write and contribute semantic, and maintainable HTML and CSS to a project.

The course guides you through a typical "first page" build of any green field project. This encompasses selecting/creating a responsive CSS grid, building core shared components for your new application, and finally delivering an accessible, SEO optimised, lightning fast loading product detail page.

## Assessment Style
This core skill assessment is split into two parts. Firstly, you'll take a design from PSD to HTML/CSS during Learn Tech. This is assessed over three levels; Rhino, Narwhal, and Unicorn. Secondly, before completing each level as HTML/CSS is quite subjective you'll be asked to talk about the decisions you made whilst building out the deliverables for each level.

In addition to the deliverables, at each level you are expected to demonstrate:

- Pixel Perfect HTML/CSS (Your preferred browser)
- Responsive Design
- Cross Browser testing (Chrome/Firefox/Edge/Safari)
- Semantic HTML (i.e. no [Tag Soup](https://en.wikipedia.org/wiki/Tag_soup) )
- Logical CSS naming

It is up to the assessor to determine whether or not you have adequately achieved the above in addition to the deliverables for each level.

As this isn't an assessment about scaffolding an application, and gathering resources we have built the (base application)[https://github.com/madetech/core-skill-frontend]. At this time this repo is private to Made Tech members, we're working to open source this too.

All PSDs and assets can be downloaded from [the core skill drive](https://drive.google.com/open?id=1Qz7CXgspS7XYVpSXJEUcrrWwHklqNtb7)

## Core Concepts
Each of the sections below contain reading material and links to related resources and tools to help you on your way. Some of them wont be assessed but are good things to know about.

- [Working with Photoshop](./resources/working-with-photoshop.md)
- [Grids](./resources/grids.md)
- [Semantic HTML](./resources/semantic-html.md)
- [Responsive Design](./resources/responsive-design.md)
- [CSS Architecture](./resources/css-architecture.md)
- [Web Typography](./resources/web-typography.md)
- [Icons](./resources/icons.md)
- [Cross Browser Testing](./resources/cross-browser-testing.md)
- [Web Accessibility](./resources/web-accessibility.md)
- [HTML/CSS Standards](./resources/html-css-standards.md)
- [Progressive Enhancement](./resources/progressive-enhancement.md)
- [Web Performance](./resources/web-performance.md)
- [SEO](./resources/seo.md)

## Assessment Levels

For every level, as we should be "production ready" at every stage a you must deliver:

- Responsive, mobile-first, HTML/CSS for Mobile (320px) & Desktop (1024px)
- Pixel perfect components in their main browser at defined breakpoints, however when resizing the built html should reflow.
- Cross Browser tested
- Semantic HTML
- Maintainable well architected CSS

**Javascript is not required to complete any level.**

### Rhino

To obtain rhino you must present the following:

- A grid, either bespoke or off the shelf.
- A sticky header (remembering we're after a CSS solution)
- Footer
- Creation of any additional assets

While presenting your page, you should be able to explain the following:

- What are the different values of `position` and what do they do, and when you would use them.
- What are the different values of `display` and what do they do, and when you would use them.
- What tools if any did you use to make the icons?
- Their initial CSS structure, and how they plan to keep it maintainable?
- Their choice to use (or not use) an off the shelf grid?

### Narwhal

To obtain Narwhal you must present the following:

- Related Products
- Promotions area
- Main product image, and thumbnails
- SEO

While presenting your page, you should be able to explain the following:

- Did you have to DRY up any CSS as you found common patterns?
- What additional SEO features have you added? (HINT: Microformats)?
- How would open graph meta tags help discoverability?
- Which image format have you chosen to use? How would you optimize them if you had to?
- The customer wants a new promotion on the page and the design shows white text on a very light background. What would you recommend in this situation? If anything?

### Unicorn

To obtain unicorn you must present the following:

- Cart form
- Accessible
- Page load optimisations

While presenting your page, you should be able to explain the following:

- Did you have to change any of your previous HTML to follow accessibility guidelines?
- What techniques did you use to speed up the page load?
- How did you keep your form accessible whilst applying custom styling?
- If you had to stop flash of unstyled content (FOUC) how would you have gone about it?
- If a customer requested the page structure to remain consistant while the page loaded how would you do that?
{% endcapture %}
{% include legacy_markdown_container.html content=content %}
