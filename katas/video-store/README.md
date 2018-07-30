# Video Store

Write a system that can build a `statement`, when given `rentals`.

When there are 3 regular movie rentals for 1, 2 and 3 days respectively, the statement looks like:

```
Rental Record for Customer Name
  Crazynotes  2.0
  Teeth  2.0
  The Web  3.5
You owned 7.5
You earned 3 frequent renter points
```

## Regular Movies

Are 2 for the first 2 days, and 1.5 for each day thereafter.

You earn 1 frequent renter point no matter the length of the rental.

## New Release Movies

Are 3 per day.

You earn 1 frequent renter point for a 1 day rental, and 2 for any rental of 2 days or more.

## Childrens Movies

Are 1.5 for the first 3 days, and 1.5 for each day thereafter.

You earn 1 frequent renter point no matter the length of the rental.


