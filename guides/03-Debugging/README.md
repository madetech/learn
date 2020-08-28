# Debugging
*"90% of coding is debugging. The other 10% is writing bugs" - Bram Cohen*  

Code is seldom correct the first time it's written, so we must employ 
debugging techniques in order to understand why code is misbehaving.
This guide will help you to gain an understanding of why bugs happen, and
to get comfortable debugging your code as well as code others have written.

## To Do
You'll want to pair up with someone so that you can discuss your learning 
and share ideas when working through the exercises, two heads are better
than one!  

Make sure you have the `make` utility installed:
 - On MacOS you'll need to install Xcode Command Line Tools you can do this 
 by entering the command `xcode-select --install`
 - On Ubuntu GNU Make is bundled as part of the Build Essentials package,
  you can install this by entering the command
  `sudo apt-get install build-essential`

# Exercises

## 1. Stacktraces

Identify the most likely source of error based on the following
 stacktrace:
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
Take a minute to speculate as to what caused the programmer to introduce
 this bug, put yourself in their shoes.

## 2. Practice

You will inevitably encounter legacy projects with bugs. In some cases, you
may not be able to trust the code as naming and behaviour may not line up. A
`read_file()` method may do something unexpected, such as reading *and* writing back to a file, or reading from a database.

Assumptions can be dangerous, if the results you're getting are confusing
think about the assumptions you're making and test them one by one.

## 2.1 Understand and get it running

Open "[BuggyProject](https://github.com/madetech/learn/tree/master/guides/03-Debugging/BuggyProject)" up in a text editor

Read the contents of the project and understand it's purpose. _Hint: start with the tests._

Use Make to run it in the browser. Fix any bugs that prevent it from loading.

Use Make to run the tests, fix the code as you see fit.

### Make?

Run the command `man make` and have a read. Discuss what you think it does,
do you both agree?

## 2.2 Deliver some value

Now that you have it running and the tests are passing, have a look at how
it looks in the browser.

Identify issues and create a backlog of problems on post it notes.

Work through the issue you think is of the highest priority to a potential user.

# 3. Build deeper knowledge 

What are some steps you could take to resolve errors and why? How can you 
decide which steps to take first?

Identify some methods of debugging errors in production applications. 

## Resources

- [How to Interpret a Stacktrace](https://gorails.com/episodes/debugging-how-to-interpret-a-stacktrace)
- [Debugging Rails Applications](http://guides.rubyonrails.org/debugging_rails_applications.html)
- [I am a puts debuggerer](https://tenderlovemaking.com/2016/02/05/i-am-a-puts-debuggerer.html)
- [Primer for Dealing with Errors in Ruby](https://rollbar.com/blog/ruby-exception-handling-guide/)
- [The Stack Trace](http://railscasts.com/episodes/24-the-stack-trace)
- [Pry Cheat Sheet](https://gist.github.com/lfender6445/9919357)
- [A Comprehensive Guide To Debugging Rails](http://www.jackkinsella.ie/articles/a-comprehensive-guide-to-debugging-rails)
