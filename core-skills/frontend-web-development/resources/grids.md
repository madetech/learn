# Grids

Long gone are the days of table based layouts. Engineers use CSS to achieve basic to the most complex of page layouts.

Understanding of the CSS box model (margin, border, padding etc) should be essential too. Need to get that in here?

Without using a grid system for creating a layout, there are:

Floats (including clear for vertical layout considerations)
Positioning (including position relative and absolute)
Flexbox (including flex-direction for vertical layout considerations)

Engineer can describe each of these and think of both positives and negatives for using each.

Do we want to list some of the pros/cons that we think there might be? Not all, but some might be subjective. 

Floats will work well in all browsers as this has been around far longer. More complex though (potentially) to build your layout, with having to manage the floats and clears, and calculating various widths and heights manually.

Flexbox will work well in modern browsers, but not in older ones. 

If not using floats or flexbox, then you could use a grid layout system, such as Twitter Bootstrap.

Frameworks like Bootstrap are great, but sometimes you don’t need the kitchen sink i.e.bloat, tag soup. The engineer should know when to be pragmatic about the use of a framework, and when to handwrite CSS.

Reading material

[CSS layouts](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout)
[Floats for CSS layouts](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Floats)
[Flexbox for CSS layouts](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox)
[Basic Concepts of Flexbox])https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox)
https://hacks.mozilla.org/2016/04/you-might-not-need-a-css-framework/
https://css-tricks.com/what-are-the-benefits-of-using-a-css-framework/
