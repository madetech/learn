# Controllers and Routing Tutorial

## Resources

- https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview
- https://www.ibm.com/developerworks/library/ws-restful/index.html
- http://www.restapitutorial.com/
- http://guides.rubyonrails.org/routing.html
- https://richonrails.com/articles/understanding-rails-routing
- https://www.theodinproject.com/courses/ruby-on-rails/lessons/routing
- https://www.codecademy.com/articles/standard-controller-actions
- http://guides.rubyonrails.org/action_controller_overview.html
- https://www.theodinproject.com/courses/ruby-on-rails/lessons/controllers
- https://relishapp.com/rspec/rspec-rails/docs/controller-specs
- https://relishapp.com/rspec/rspec-rails/v/3-6/docs/request-specs/request-spec

## Tutorial

What are the 3 main components of HTTP systems?

Can you visualise how they fit together?

What are the main HTTP methods/verbs?

What routes and request types would you use for the following:
- Viewing a user profile page
- Creating a user
- Editing a user
- Deleting a user
- Updating a user

In a Rails app that followed the normal conventions what controller and actions would you expect the above to map to?

If you wanted to view a user's profile page what would:
- the destructured/parameterized route look like?
- the request contain?
- the response contain?

Can you discuss and explain the concept of permitted params?

Can you discuss and explain the concept Controller filters?

Can you describe some examples of custom (non-resourced) routes?

Can you describe some success and error HTTP status codes and where you would use them?

What's the difference between `resource` and `resources`

What response types are available in Rails?

How can you handle returning responses to a user if there isn't a view?

## Exercise

In your academy-tutorial-repo

Manually create a new controller and spec for handling requests related to Movies

Write tests to handle creating a new Movie via a HTTP request and make these pass (be sure to include tests for failing validation)

Write tests to handle viewing all Movies via a HTTP request and make these pass

Write tests to handle editing and updating a Movie via a HTTP request and make these pass (be sure to include tests for failing validation)

Add tests for error messages for creating and updating a Movie and return these to the user from the controller

Write tests to handle viewing a Movie via a HTTP request and make these pass

Refactor the above to do the loading of the Movie before the method is called and make sure your tests still pass

Add tests for handling when a Movie doesn't exist and returning a message with the correct status code and make these pass

Open a pull request and ask for a review when you're done
