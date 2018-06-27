# Gem Packaging

In Ruby we use Gems to distribute reusable components.

For example, `rspec` is distributed as a Gem.

When we install a gem by invoking `gem install rspec` we download a package from RubyGems.org.

If we are using Bundler with a Gemfile, we are able to download a specific version of a Gem. This version management is important for the stability of your project.

## Creating your first library

We're going to be creating a Gem to allow anyone to wrap text onto new lines.

We need a name for our Gem - and we need to make sure it's not already in use so check [rubygems.org](https://rubygems.org/) to make sure.

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

A useful guide is [creating a gem](https://bundler.io/v1.16/guides/creating_gem.html#how-to-create-a-ruby-gem-with-bundler). Note that they are using aruba and cucumber for testing, which we are not.

You should be pretty familiar with the Word Wrap kata by now. 

* TDD a Word Wrap solution, or copy a solution you already have.
* Keep in mind that you want to release it on rubygems.org, make any changes you think are appropriate

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

