# Continuous Integration and Continuous Deployment

Over the course of development, software changes continuously and as
software changes bugs & misfeatures will arise. In order to ensure feedback is
as relevant as possible continuous deployment was introduced.

Continuous integration is a way of working where developers reintegrate their 
code into the upstream repository as frequently as possible. Continuous
Deployment takes this one step further and automatically builds, tests and
deploys applications so long as the steps complete successfully.

## Prerequisites

If you have built this project with other people pair or mob with them through 
this guide.

This guide assumes you are already familiar with Git, and the concept of Pull Requests.

In this guide we assume that you have locally configured your shared git remote to be named `origin`.

You will need a project hosted on GitHub (preferably open-sourced, and without an automated build tool configured for it) and accounts on Heroku and Travis.

You will need to install the Heroku and Travis command line clients.

Before continuing, make sure that you can:

* Draw out a simple Git branch with commits that apply on top of each other.
* Draw out what happens when a Git branch is merged with two parent commits.
* Draw out what happens when a Git branch is rebased ontop of a branch with commits.
* Explain what `HEAD`, `master` and `origin/master` refer to.

**Speak to your mentor if you need a refresher.**

## Git Branching

Have a read through of Martin Fowler's article on the 
[various approaches to branching](https://martinfowler.com/bliki/FeatureBranch.html)
to get an understanding of the pros and cons of each approach.

At Made Tech we practice Continuous Integration, as we have come to the
agreement that the pros of this approach outweigh the cons.

* Why do you think that is?
* Discuss scenarios where Continuous Integration wouldn't be appropriate

## The Trade-off

Continuous integration is a branching style with more stringent rules than
others and so requires a level of commitment from developers in order to do
its job.

### Some Rules

* `origin/master` should pass it's tests at all times. _All commits in master should compile and pass all tests._
* `origin/master` should be deployable at all times. _All commits in master should be of sufficient quality to be deployed._
* Where necessary, release should be decoupled from deploy. _It should be possible to deploy master, and turn on new features independently_.
* Pull requests should be short lived (\~4 working hours maximum), and short (\~400 lines of code maximum). _Pull requests should be simple to review_.
* Pull requests should pass all tests, and not have any linter warnings (where appropriate). _Pull requests should be tested before merging_.

### Some Practices

* Build new functionality in small increments, by employing a good software architecture and a [comprehensive suite of tests](https://www.madetech.com/blog/semantically-stable-test-suites).
* Use an automated build tool (e.g. Jenkins, Travis, Gitlab CI, CircleCI, etc) to run tests every time a new commit is pushed to `origin/master`
* Use an automated build tool to run tests every time a new commit is pushed to a Pull Request branch, and also run the tests as an "Integration" with master. (More on this later) 
* Use your automated build tool to deploy successful builds

## Automating Tests

We're going to use Travis CI to automate some tests.

First, you'll need to pick a project to automate tests on.

If your project is open-source you can use a cloud-hosted build tool such as Travis CI for free, otherwise you'll need to pay a subscription.

* Follow [the instructions over at Travis CI's website](https://docs.travis-ci.com/user/getting-started/#to-get-started-with-travis-ci).

If you are using RSpec your `.travis.yml` file can be as simple as:

```ruby
language: ruby
script: bundle exec rspec
rvm:
  - 2.5.0
```

If your GitHub project is at `github.com/craigjbass/tictactoe`, your Travis CI build will be at `travis-ci.org/craigjbass/tictactoe`.

* Trigger a build on Travis CI. Does it pass?
* Open a pull request, does it run your tests?

## Automating Deployment
Using Travis CI and Heroku you can configure your application to be
automatically deployed. To do this, run the following command:

```
travis encrypt $(heroku auth:token) --add deploy.api_key
```

## Resources
 - [Branch by abstraction](https://martinfowler.com/bliki/BranchByAbstraction.html)
 - [Feature toggles](https://martinfowler.com/bliki/FeatureToggle.html)
 - [Heroku deployment - Travis CI](https://docs.travis-ci.com/user/deployment/heroku/)
