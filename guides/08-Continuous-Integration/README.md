# Continuous Integration and Continuous Deployment

Over the course of development, software changes continuously and as
software changes bugs & misfeatures will arise. In order to ensure feedback is
as relevant as possible continuous deployment was introduced.

Continuous integration is a way of working where developers reintegrate their 
code into the upstream repository as frequently as possible. Continuous
Deployment takes this one step further and automatically builds, tests and
deploys applications so long as the steps complete successfully.

## Prerequisites

If you have built this project with other people, pair or mob with them through 
this guide.

This guide assumes you are already familiar with Git, and the concept of Pull Requests.

In this guide we assume that you have locally configured your shared git remote to be named `origin`.

You will need a project hosted on GitHub (preferably open-sourced, and without an automated build tool configured for it) and accounts on Heroku and Travis.

You will need to install the [Heroku](https://devcenter.heroku.com/articles/heroku-cli) and [Travis](https://github.com/travis-ci/travis.rb#installation) command line clients.

## Automating Tests

We're going to use Travis CI to automate some tests.

First, you'll need to pick a project to automate tests on.

If your project is open-source you can use a cloud-hosted build tool such as Travis CI for free, otherwise you'll need to pay a subscription.

* Follow [the instructions over at Travis CI's website](https://docs.travis-ci.com/user/getting-started/#to-get-started-with-travis-ci).

If you are using RSpec, all you need to know is your Ruby version for the `rvm` section (use `ruby -v` on the command line), and then your `.travis.yml` file can be as simple as:

```ruby
language: ruby
script: bundle exec rspec
rvm:
  - 2.5.0
```

Note that the above travis.yml assumes you have a `Gemfile` - which can be as simple as [this one](https://github.com/claresudbery/mars-rover-kata-ruby/blob/fdff2aefca3456dddab635f494fd885b63aa965e/Gemfile). You'll also need a `Gemfile.lock` later on to get Heroku working - you can create one by running `bundle install` after you've added your `Gemfile`.

If your GitHub project is at `github.com/craigjbass/tictactoe`, your Travis CI build will be at `travis-ci.org/craigjbass/tictactoe`.

* Trigger a build on Travis CI. Does it pass?
* Does it run tests if you push to your main branch in GitHub?
* Does it run tests if you open a pull request? Note that you will only be dealing with pull requests if you are using branches in your branching strategy - see [Git Branching](#git-branching) below.
  * To open a pull request:
  * Create a branch (`git checkout -b branch_name`)
  * Commit some code
  * Push the branch (it will prompt you to run `git push --set-upstream origin branch_name` first)
  * At [GitHub](https://GitHub.com), go to your repo and click Pull Requests at the top
  * Click **Compare & pull request** next to "branch_name had recent pushes n minutes ago" (If you don't see that, you might need to select your branch from the dropdown on the right).
  * Enter a description, and click to create the pull request
  * You should see it running tests in Travis
  * You can now click **Merge pull request** to get your changes merged into the main branch.
* What happens if you open a pull request from a branch with failing tests? Can you still merge the request? What changes?

## Automating Deployment
Using Travis CI and Heroku you can configure your application to be automatically deployed to the web. However, note that if your app has a command-line interface (rather than a web interface), then you don't gain much from Heroku deployment. In that case I would recommend you create a new repo with a simple Sinatra app as described at the beginning of Learn Enough Ruby [here](https://www.learnenough.com/course/learn_enough_ruby/hello_world/ruby_web), and deploy that repo using Heroku. The instructions [here](https://medium.com/@felipeluizsoares/automatically-deploy-with-travis-ci-and-heroku-ddba1361647f) should help with getting that working.

To get started with Heroku, navigate to your repo folder and run the following commands (if on Windows, you might need to use Windows Terminal):

```
travis login --pro
travis encrypt $(heroku auth:token) --add deploy.api_key --com
```

This will add some stuff to `.travis.yml`, which you will then have to push to the remote (`git push`).

Now scroll down to step 4 - "Create an account on Heroku and link with the repository" - in [these instructions](https://medium.com/@felipeluizsoares/automatically-deploy-with-travis-ci-and-heroku-ddba1361647f) to link your code base to Heroku.

## Troubleshooting

- Use the [travis docs](https://docs.travis-ci.com/user/languages/ruby) to help you identify problems
- If you're on Windows and you get the error "Your bundle only supports platforms ["x86-mingw32"]", then replace `x86-mingw32` with `ruby` in the `PLATFORMS` section in `Gemfile.lock`
- If you get errors about Bundler versions, add the following to `.travis.yml` (explanation [here](https://docs.travis-ci.com/user/languages/ruby/#bundler-20)):
```yml
before_install:
  - gem install bundler
```

## Git Branching

Have a read through of Martin Fowler's article on the [various approaches to branching](martinfowler.com/articles/branching-patterns.html) to get an understanding of the pros and cons of each approach. It's a long article though, so you might want to jump straight to the section on [continuous integration](martinfowler.com/articles/branching-patterns.html#continuous-integration).

At Made Tech we practice Continuous Integration, as we have come to the agreement that the pros of this approach outweigh the cons.

* Why do you think that is?
* Discuss scenarios where Continuous Integration wouldn't be appropriate

## The Trade-off

Continuous integration is a branching style with more stringent rules than others and so requires a level of commitment from developers in order to do its job.

### Some Rules

* `origin/master` should pass its tests at all times. _All commits in master should compile and pass all tests._
* `origin/master` should be deployable at all times. _All commits in master should be of sufficient quality to be deployed._
* Where necessary, release should be decoupled from deploy. _It should be possible to deploy master, and turn on new features independently_. For instance the latest deployment contains a new feature, but your users can't actually see or use that feature yet - ie it hasn't been _released_. This approach is commonly referred to as ["feature toggling" or "feature flagging"](https://martinfowler.com/articles/feature-toggles.html).
* Pull requests should be short lived (\~4 working hours maximum), and short (\~400 lines of code maximum). _Pull requests should be simple to review_.
* Pull requests should pass all tests, and not have any linter warnings (where appropriate). _Pull requests should be tested before merging_.

### Some Practices

* Build new functionality in small increments, by employing a good software architecture and a [comprehensive suite of tests](https://www.madetech.com/blog/semantically-stable-test-suites).
* Use an automated build tool (e.g. Jenkins, Travis, Gitlab CI, CircleCI, etc) to run tests every time a new commit is pushed to `origin/master`
* Use an automated build tool to run tests every time a new commit is pushed to a Pull Request branch, and also run the tests as an "Integration" with master. (More on this later) 
* Use your automated build tool to deploy successful builds

### Feature Branches

If you do plan on using feature branches, you might want to refresh your understanding of git merges. Make sure that you can:

* Draw out a simple Git branch with commits that apply on top of each other.
* Draw out what happens when a Git branch is merged with two parent commits.
* Draw out what happens when a Git branch is rebased ontop of a branch with commits.
* Explain what `HEAD`, `master` and `origin/master` refer to.

**Speak to your mentor if you need a refresher.**

## Resources
 - [Branch by abstraction](https://martinfowler.com/bliki/BranchByAbstraction.html)
 - [Feature toggles](https://martinfowler.com/bliki/FeatureToggle.html)
 - [Heroku deployment - Travis CI](https://docs.travis-ci.com/user/deployment/heroku/)
