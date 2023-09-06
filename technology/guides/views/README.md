# Views Tutorial

## Resources

- http://guides.rubyonrails.org/layouts_and_rendering.html
- http://guides.rubyonrails.org/action_view_overview.html
- https://www.theodinproject.com/courses/ruby-on-rails/lessons/views
- http://www.stuartellis.name/articles/erb/
- http://guides.rubyonrails.org/form_helpers.html
- https://relishapp.com/rspec/rspec-rails/docs/view-specs/view-spec
- https://github.com/teamcapybara/capybara
- https://robots.thoughtbot.com/how-we-test-rails-applications

## Tutorial

What ways do we have of making something in the controller available to the view?

What situations would you use a view spec over a feature spec and vice versa?

If we wished to re-use part of one view in another how would we accomplish this?

What methods are there of passing data/variables to a partial?

How can we use methods in a specific controllers views without making them available to all views?

Can you name and discuss any built in view helpers?

## Exercise

In your academy-tutorial-repo

Write tests to handle viewing a Movie's page and showing it's title and year of release and make them pass

Write tests to handle viewing a Movie's page and showing it's director and make them pass

Write tests to handle viewing a Movie's page and showing it's average rating (if it has any) and make them pass

Write tests to handle creating a new movie from a form (using the create action you implemented in the controller/routing tutorial) and make them pass. You can assign the director randomly for now.

In the same view add tests and the ability to select an existing director when creating a movie

Write tests for handling editing a movie in the view and make these pass too, this should use the same form as creating a movie and the details should be pre-filled.
