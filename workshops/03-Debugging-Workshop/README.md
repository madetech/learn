# Troubleshooting and Debugging

## 1. Stacktraces

In the given stacktrace identify the most likely source of the error:
```console
NoMethodError: undefined method `title' for nil:NilClass
  from lib/acme_limited/use_cases/all_resources.rb:10:in `block in call'
  from active_record/relation/delegation.rb:41:in `each'
  from active_record/relation/delegation.rb:41:in `each'
  from lib/acme_limited/use_cases/all_resources.rb:9:in `group_by'
  from lib/acme_limited/use_cases/all_resources.rb:9:in `call'
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

## 2. Practice

It's possible you will encounter legacy projects which you need to run, and may contain bugs.

In some cases, you may not be able to trust the code - naming and behaviour might not line up. A read_file method might read AND write back to a file, or read from a database instead.

Assumptions are dangerous. If the results you are getting are confusing, try to examine and investigate what you might be assuming.

Use a disciplined approach - ask yourself if you've made an assumption, and test those assumptions one by one.

## 2.1 Understand and get it running

Open "BuggyProject" up in a text editor

Read the contents of the project and understand it's purpose. _Hint: start with the tests._

Use Make to run it in the browser. Fix any bugs that prevent it from loading.

Use Make to run the tests, fix the code as you see fit.

### Make?

Woah, we've just introduced a new tool: `Make`.

Run `$ man make` and have a read.

* Describe to your pair what you think it does. Do you both agree?

## 2.2 Deliver some value

Now you have it running, and the tests are passing have a look at how it looks in the browser.

Identify issues and create a backlog of problems on post it notes.

Work through the issue you think is of the highest priority to a potential user.

# 3. Build deeper knowledge 

What are some steps you could take to resolve errors in a gem?

Identify some methods of debugging errors in production application.

## Resources

- https://gorails.com/episodes/debugging-how-to-interpret-a-stacktrace
- https://rollbar.com/blog/ruby-exception-handling-guide/
- http://railscasts.com/episodes/24-the-stack-trace
- https://tenderlovemaking.com/2016/02/05/i-am-a-puts-debuggerer.html
- https://gist.github.com/lfender6445/9919357
- http://www.jackkinsella.ie/articles/a-comprehensive-guide-to-debugging-rails
- http://guides.rubyonrails.org/debugging_rails_applications.html
