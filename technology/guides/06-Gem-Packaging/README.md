# Gem Packaging

In Ruby we use Gems to "distribute reusable components". What this means is that we can share portions of code so that we can reuse them in many projects.

Common Ruby libraries or frameworks (e.g. Sinatra, Rails, Rubocop, ActiveRecord, etc) are all Gems.

You've already seen Gems that have been created by others, for example, `rspec` is distributed as a Gem and we have already used that.

When we install a Gem by invoking `$ gem install rspec`, it downloads a package (a .gem file) from RubyGems.org and stores this on your computer.

Ruby knows where to find these Gems, and once installed we can "require" them (roughly equivilent to import) in our code. 

For example:

```Ruby
require 'chronic'

date = Chronic.parse('may seventh '97 at three in the morning')
```

Although we are able to install Gems using `$ gem install <gem name>`, we usually want to tie our project to a specific version of a Gem.

## Bundler to the rescue

Bundler allows us to "lock" our project to a particular version of a Gem.

To do so, it relies on two files in your project root directory: `Gemfile` and `Gemfile.lock`. 

Your `Gemfile` can specify versions, or version ranges, and your `Gemfile.lock` specifies the exact version.

In the case of an application, you should commit both of these files to Git.

In the case of a library (your project is to be released as a Gem itself), you should only commit the `Gemfile`.

### Stop and understand

* Why is it desirable to lock to a particular Gem version?
* For what reasons would we specify versions in our Gemfile?
* Why should libraries not have a `Gemfile.lock` committed?

## Creating your first library

We're going to be creating a Gem to allow anyone to wrap text onto new lines.

We need a name for our Gem - we can search [rubygems.org](https://rubygems.org/) to make sure it's not already in use.

Next we will want to scaffold a blank project within which we're going to add our code.

`$ bundle gem <gem name>`

Have a look around. Also note the README.md file that has been created.

### Stop and understand

* What is the .gemspec file for?
* What's different about the Gemfile in this project?
* What is a Rakefile for?

## Installing dependencies

Go ahead and run `$ bundle install`.

By default, this will raise an error. 

Read the .gemspec file and determine how to resolve this.

If we're pushing this to rubygems.org what changes should we make?

## Adding some code

Once you can successfully run `$ bundle install` to install the dependencies, you should also be able to run `$ bundle exec rake spec`.

A useful guide is [creating a gem](https://bundler.io/v1.16/guides/creating_gem.html#how-to-create-a-ruby-gem-with-bundler). Note that they are using `aruba` and `cucumber` for testing, which we are not.

You should be pretty familiar with the Word Wrap kata by now. 

* TDD a Word Wrap solution, or copy a solution you already have.
* Keep in mind that you want to release it on rubygems.org, make any changes you think are appropriate.

## Releasing

Look at your .gemspec again, and locate the following snippet:

```ruby
spec.files = `git ls-files -z`.split("\x0").reject do |f|
  f.match(%r{^(test|spec|features)/})
end
```

What do you think this does?

Given that in order to push the Gem to rubygems.org we need to `$ bundle exec rake release`, what do we need to do first?

## Using your Gem

Create a blank Ruby project, and import your Gem.

Make a simple command line application that takes text on STDIN and outputs the output of your word wrap on STDOUT.

* How can you make it work like `$ echo "this is too long" | wwrap 6` ?
* Did you find your Gem easy to use?
* Any improvements?

## Releasing a new version

Users of your command line application are happy, but they are asking you to implement the reverse.

`$ cat wrapped.txt | wwrap --undo`

Implement this change, ensuring your business logic lives in your Gem. You are expected to release a new version.

## Dependency upgrade path

Suppose we only built the command line application, and we reused the word wrap Gem that someone else wrote.

Let's also imagine that the upstream development team are regularly patching the Gem to resolve bugs and add new features.

Let us also suppose that the word wrap Gem releases frequently (once per day or per week).

We want to take advantage of those bug fixes and new features, but we must also ensure the quality of our application for our users.

What part of our development process ensures that we can update the Gems without breaking our application?

Can you describe the steps you'd take to when first requiring and upgrading Gems?

Did you build your command line application to have an easy dependency upgrade path?

