# ORM/ActiveRecord/Models Workshop

## Resources

- http://guides.rubyonrails.org/active_record_basics.html
- https://www.theodinproject.com/courses/ruby-on-rails/lessons/active-record-basics
- http://guides.rubyonrails.org/active_model_basics.html
- https://www.schneems.com/post/25503708759/databases-rails-week-2-modeling-relationships-and
- https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec

## Workshop

How could you write the following SQL statements in ActiveRecord format?
- `SELECT * FROM movies`
- `SELECT * FROM movies WHERE name='Die Hard'`
- `SELECT * FROM movies WHERE release_year=2000 AND genre='Action'`
- `SELECT COUNT(*) FROM movies WHERE genre='Romance'`

Can you visualise and draw a table diagram for a movie rating site with the following requirements?
- Directors have many movies
- Directors have a name
- Movies have a title, release year, and budget
- Movies have many ratings

Can you identify what the foreign keys would be for the above?

Given the above how would you return the top 5 movies by budget from 1982?

What is returned by an ActiveRecord query?

What different ways could you use return all the movies released in the current year?

What is the difference between using `User.find(1)`, `User.find_by(id: 1)` and `User.where(id: 1)`?

What do `db:create`, `db:setup`, `db:seed`, `db:schema:load` and `db:migrate` do?

## Exercise

Fork the [academy-workshop-application](https://github.com/madetech/academy-workshop-application) repo

Set up the database and ensure any existing tests are passing

Use the ActiveRecord queries you came up with in the workshop in the `rails console` and make sure data is returned

Create a migration for a Directors table and associate them with the existing Movies table (make sure to actually write your migration in the file)

Write tests to ensure that Movies have a Director when they are created and that if they do not they will not be saved

Make the above tests pass, remember to write as little code as needed to make them pass initially

Write tests for returning the director who has made the most movies and the top 5 movies by budget in a given year and make these pass

Create a migration for a Ratings table and associate them with the existing Movies table

Write tests to ensure ratings are associated with movies and will not be created if they aren't

Write tests to ensure ratings have a score of 1-5 and will not be created if they do not

Write tests for returning all of a movies ratings and it's average rating and make these pass

Write tests for returning the Director whos movies have the highest average ratings and make these pass

Open a pull request and ask for a review when you're done
