# Continuous Integration and Continuous Deployment

Over the course of development, software changes continuously and as
software changes bugs & misfeatures will arise. In order to ensure feedback is
as relevant as possible continuous deployment was introduced.

Continuous integration is a way of working where developers reintegrate their 
code into the upstream repository as frequently as possible. Continuous
Deployment takes this one step further and automatically builds, tests and
deploys applications so long as the steps complete successfully.

## Prerequisites

You will need a project hosted on GitHub (preferably open-sourced, and without an automated build tool configured for it). If you have built this project with other people, pair or mob/ensemble with them through this guide.

You will need accounts on [Heroku](https://devcenter.heroku.com) and [CircleCI](https://circleci.com/signup/) - they both offer free accounts as of March 2022.

You will need to install the [Heroku](https://devcenter.heroku.com/articles/heroku-cli) command line client - do that now if you haven't already.

This guide assumes you are already familiar with Git, and the concept of Pull Requests.

In this guide we assume that you have locally configured your shared git remote to be named `origin`. This is the default, so you probably have. To check, run the following command in the root of your project: `cat .git/config | grep remote`. You should see something like this - the first line indicates that the remote is named `origin`:

```
[remote "origin"]
        fetch = +refs/heads/*:refs/remotes/origin/*
        remote = origin
```

## Automating Tests

You're going to use CircleCI to automate some tests - that is, set things up so that every time you push your code to GitHub, your tests will be run for you automatically in what's known as a "pipeline".

1. Follow [the instructions over at CircleCI's website](https://circleci.com/docs/2.0/getting-started/) to run through a simple little tutorial that walks you through the CircleCI basics.
2. Now get Circle CI working with a simple Ruby Sinatra app.  
        - You have a couple of options for your source code:  
                  - You can use a project you already have.     
                  - ...or you can use [this sample project](https://github.com/rf-mt/simple-sinatra-app-to-deploy) which has been created for you for this purpose.  
                            - There is also a [deployed version of this project](https://github.com/rf-mt/simple-sinatra-app) which you can refer to for reference.  
                            - It's [deployed here](https://super-simple-sinatra-app.herokuapp.com/).  
        - This will mean you need to add a `.circleci` folder to the root of your project  
        - Then create a `config.yml` file in that folder (see example below)  
        - To find out more about the `config.yml` file, see [documentation here](https://circleci.com/docs/2.0/configuration-reference)  

To create your `config.yml` file: If you're using `RSpec`, all you need to know is your Ruby version for the docker image section (use `ruby -v` on the command line - you can see in the example below the version is `2.6.3`), and then your `config.yml` file can be as simple as:
```
version: 2.1
orbs:
  ruby: circleci/ruby@0.1.2

jobs:
  build_and_test:
    docker:
      - image: circleci/ruby:2.6.3-stretch-node
    executor: ruby/default
    steps:
      - checkout
      - run: gem install bundler
      - ruby/bundle-install
      - run: bundle exec rspec
```
If you're using a Ruby project, note that this config should be very similar to the pre-populated `config.yml` file you got in the CircleCI tutorial linked above. You also have [this deployed Ruby project](https://github.com/rf-mt/simple-sinatra-app/blob/master/.circleci/config.yml) for reference.

Note that the above `config.yml` assumes you have a `Gemfile` - which can be as simple as [this one](https://github.com/claresudbery/mars-rover-kata-ruby/blob/fdff2aefca3456dddab635f494fd885b63aa965e/Gemfile). You'll also need a `Gemfile.lock` later on to get Heroku working - you can create one by running `bundle install` after you've added your `Gemfile`.

You can go direct to your CircleCI build in the browser. For instance, if your GitHub project is at `github.com/craigjbass/tictactoe`, your CircleCI build will be at `app.circleci.com/pipelines/github/craigjbass/tictactoe`.

3. Follow the following steps: 

* Trigger a build on CircleCI (by pushing a code change to your GitHub repo). Does it pass?
* Does it run tests if you push to your main branch in GitHub?
* Does it run tests if you open a pull request? Note that you will only be dealing with pull requests if you are using branches in your branching strategy - see [Git Branching](#git-branching) below.
  * To open a pull request:
  * Create a branch (`git checkout -b branch_name`)
  * Commit some code
  * Push the branch (it will prompt you to run `git push --set-upstream origin branch_name` first)
  * At [GitHub](https://GitHub.com), go to your repo and click Pull Requests at the top
  * Click **Compare & pull request** next to "branch_name had recent pushes n minutes ago" (If you don't see that, you might need to select your branch from the dropdown on the right).
  * Enter a description, and click to create the pull request
  * You should see it running tests in CircleCI
  * You can now click **Merge pull request** to get your changes merged into the main branch.
* What happens if you open a pull request from a branch with failing tests? Can you still merge the request? What changes?

## Automating Deployment

You've used CircleCI to run your tests in the cloud automatically every time you push a codechange to GuitHub. Now you can add Heroku into the mix so that not only do you run your tests, but when they pass you deploy your app to the web.

Using CircleCI and Heroku you can configure your application to be automatically deployable. However, note that if your app has a command-line interface (rather than a web interface), then you don't gain much from Heroku deployment. In that case I would recommend you create a new repo with a simple Sinatra app as described at the beginning of Learn Enough Ruby [here](https://www.learnenough.com/course/learn_enough_ruby/hello_world/ruby_web), or you can fork [this simple Sinatra app](https://github.com/rebeccafitzsimmons1/simple-sinatra-app-to-deploy/).

Run through the following sections [here](https://circleci.com/blog/continuous-deployment-to-heroku/) to deploy your app to Heroku (scroll past the node sections):
- Creating an application on Heroku
- Configuring Heroku access on CircleCI
- Using the Heroku orb to deploy the app
Note that the `config.yml` file referenced in the Adding the deploy configuration section is the same one that you created in the Automating Tests step above, so you can just add to the existing file.

### Things to think about

* Does the app still deploy if the tests fail? If so, see the `requires` step in the `heroku_deploy` workflow [here](https://circleci.com/docs/2.0/deployment-integrations/) to make a step dependent on a previous step.
* If you're using branches, are changes to all branches deployed? If so, is this desirable? See the `filters` step in the `heroku_deploy` workflow [here](https://circleci.com/docs/2.0/deployment-integrations/) to only deploy for a specific branch.
* An alternative way to deploy to Heroku is that you could remove the `heroku/deploy-via-git` job from the CircleCI `config.yml` and try configuring the deployment through Heroku by [integrating with GitHub directly](https://devcenter.heroku.com/articles/github-integration). Note in particular the Enabling GitHub integration section and the Wait for CI to pass before deploy checkbox detailed in the Automatic deploys section.

## Troubleshooting

- Use the [CircleCI language docs](https://circleci.com/docs/2.0/language-ruby/) and the [CircleCI deployment docs](https://circleci.com/docs/2.0/deployment-integrations/) to help you identify problems.
- If you're on Windows and you get the error "Your bundle only supports platforms ["x86-mingw32"]", then replace `x86-mingw32` with `ruby` in the `PLATFORMS` section in `Gemfile.lock`.
- If you get errors about Bundler versions, add the following to `config.yml` on the line before the `ruby/bundle-install` step (explanation [here](https://docs.travis-ci.com/user/languages/ruby/#bundler-20) - note that this explanation is in reference to travis, but it's the same principle):  

```yml
  - run: gem install bundler
```

- If you're using a Rack-based framework such as Sinatra and are experiencing issues when deploying to Heroku, this [article](https://devcenter.heroku.com/articles/rack) about the `config.ru` file may be helpful.


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
 - [Continuous Integration](https://www.martinfowler.com/articles/continuousIntegration.html)
 - [Continuous Delivery and Continuous Deployment](https://martinfowler.com/bliki/ContinuousDelivery.html)
