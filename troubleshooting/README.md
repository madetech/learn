# Troubleshooting and Debugging

## Resources

- http://guides.rubyonrails.org/debugging_rails_applications.html
- http://railscasts.com/episodes/24-the-stack-trace
- https://tenderlovemaking.com/2016/02/05/i-am-a-puts-debuggerer.html
- https://gist.github.com/lfender6445/9919357
- http://www.jackkinsella.ie/articles/a-comprehensive-guide-to-debugging-rails
- https://gorails.com/episodes/debugging-how-to-interpret-a-stacktrace
- https://rollbar.com/blog/ruby-exception-handling-guide/

## Workshop

In the given stacktrace identify the most likely source of the error:
```console
NoMethodError: undefined method `title' for nil:NilClass
  from lib/sparqa/use_cases/all_resources.rb:10:in `block in call'
  from active_record/relation/delegation.rb:41:in `each'
  from active_record/relation/delegation.rb:41:in `each'
  from lib/sparqa/use_cases/all_resources.rb:9:in `group_by'
  from lib/sparqa/use_cases/all_resources.rb:9:in `call'
  from app/controllers/resource_controller.rb:12:in `index'
  from action_controller/metal/basic_implicit_render.rb:4:in `send_action'
  from abstract_controller/base.rb:186:in `process_action'
  from action_controller/metal/rendering.rb:30:in `process_action'
  from abstract_controller/callbacks.rb:20:in `block in process_action'
  from active_support/callbacks.rb:108:in `block in run_callbacks'
  from react/rails/controller_lifecycle.rb:31:in `use_react_component_helper'
  from active_support/callbacks.rb:117:in `block in run_callbacks'
  from active_support/callbacks.rb:135:in `run_callbacks'
  from abstract_controller/callbacks.rb:19:in `process_action'
  from action_controller/metal/rescue.rb:20:in `process_action'
  from action_controller/metal/instrumentation.rb:32:in `block in process_action'
```

Outline the process you would follow to try to resolve the above error.

What are some steps you could take to resolve errors in a gem?

Identify some methods of debugging errors or performance issues on a production application.

What are the pros and cons to increasing the debugging level on the Rails Logger?

## Exercise

Using the methods from the resources and the workshop fork the [repo](https://github.com/ryanmacg/dasheroo) and resolve the errors making sure to open PRs as you go.
