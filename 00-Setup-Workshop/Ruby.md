# Install a version of Ruby

Installing a version of ruby can be done by using rbenv. We should use version 2.5.0

Lets see if you can put together the command for that yourself. 

_Hint_ you might find `rbenv` doesn't have a man page. If you find this the case, most commands provide help if you give them the `-h` option.

# Setting your default Ruby version

You can set your default ruby version by creating a file `~/.ruby-version` with the version number in it.

`cd ~ ; echo "2.5.0" >> ~/.ruby_version`

## Stop and understand

* What does `;` do?
* What does `>>` do?

# Bundler

You will also need Bundler. This is a tool that manages your Ruby Gems on a per project basis and lets you use different versions of the same Gem.

`$ gem install bundler`

