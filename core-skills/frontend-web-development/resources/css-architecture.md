# CSS Architecture

A well-written set of stylesheets balance a number of factors including

* Browser support - does the styling render the same in a wide range of commonly used browsers?
* Ease of change - can we easily change the styles to meet changing customer needs?
* Reuse - can we reuse commonly used styles easily?
* Stability - can we safely change our styles without worrying about unrelated breakages?
* Expressiveness - can we understand what our styles do, and do they make sense?
* Performance - are our styles fast to load and render?

If this seems overwhelming, don't worry, we're here to help.

## CSS Resets

One issue you will face is that even with a brand-new HTML file, without any stylesheets imported, different browsers will render this file differently. The cause of this is differing browser-default styling.

The defacto-accepted solution to this is to use a CSS reset stylesheet (of which there are many). A CSS reset will ensure that all browsers have the same basic styles upon which you can start layering custom styles ontop of.

**Note:** most CSS frameworks prepackage a CSS reset.

## CSS Methodologies

You will also need to choose an approach to achieve a well-architected set of CSS styles.

### Component Based CSS

If you are using React (or similar), it is likely that a Component-based approach makes the most sense

### BEM

Block Element Modifier.

- http://getbem.com/

### we also give a mention to...

* Component-based CSS
* OOCSS
* Atomic CSS
* Scalable and Modular Architecture for CSS (SMACSS)

- http://atomicdesign.bradfrost.com/table-of-contents/
- https://smacss.com/book/
- https://maintainablecss.com/chapters/semantics/
- https://css-tricks.com/when-using-important-is-the-right-choice/

## CSS Frameworks

Once you have blahed

- https://hacks.mozilla.org/2016/04/you-might-not-need-a-css-framework/
- https://css-tricks.com/what-are-the-benefits-of-using-a-css-framework/

## CSS Preprocessors

- https://designmodo.com/introduction-sass/
- https://lincolnloop.com/blog/linting-scss-sass-lint/

## CSS Layout

- https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout
- https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Floats 
- https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox 
- https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox 
- https://css-tricks.com/snippets/css/a-guide-to-flexbox/

