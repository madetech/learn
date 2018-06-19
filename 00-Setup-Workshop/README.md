# Setup Workshop

One of the most under-taught skills is how to setup a good development environment.

Since you will be using macOS, and this might be your first time we will take it slow.

## Terminal

You will need to use a Terminal to run commands in this guide. 

macOS comes with a default Terminal, however you may find it a bit lacking.

Many people at Made Tech use [iTerm 2](https://www.iterm2.com/downloads.html) but [Hyper](https://hyper.is/) also exists.

You will see `$` this at the beginning of command. You shouldn't include it when you try to run a command.

### An aside

- `$` signifies you should run a command as your "unpriviledged user"
- `#` signifies you should run that command as root

## xcode cli tools

Under the hood macOS is a Unix operating system with it's roots in BSD.

In order to compile source code you need some tools that will do compilation.

On macOS the accepted way of doing this is by installing xcode

`$ xcode-select --install`

## Homebrew

macOS does not come with it's own package manager (like Linux does), however there is a community that has put one together. 

You can install it by running

`$ curl -fsS 'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby`

### Stop and understand

* What does `-fsS` do?
* What does the `|` operator do?

_Hint_

* `$ man curl` - look up the flags
* `$ man bash` - look up pipelines

## Your Shell

By default your shell is the `Bourne-Again shell` (bash) and it will be the default installation.

This is very minimal and most programmers choose to customise it or even pick an alternative shell.

The alternative shell [zsh](http://www.zsh.org/) with [oh-my-zsh](http://ohmyz.sh/) is easy to get going with which can be installed by running

`$ brew install zsh`

`$ curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh`

This will install a fairly comprehensive and useful set of helper plugins that make using the terminal much more enjoyable.

On top of this zsh is a superset of bash, so the two are largely interchangeable.

## Homebrew cask

It's also possible to install proprietary software with Homebrew via `cask`

To enable cask:

`$ brew tap caskroom/cask`

### Stop and understand

* What is `tap`?

_Hint_ can you use `man` on your own? ;)

## Install common software

`$ brew cask install slack`

`$ brew cask install google-chrome`

`$ brew cask install firefox`

`$ brew cask install lastpass`

## Install Ruby version managers

It is possible to install Ruby itself as a standalone package, but this creates one _a small_ problem: It common to have multiple projects that require different versions of Ruby.

_To the rescue [rbenv](https://github.com/rbenv/rbenv)_

You can install rbenv by running

`$ brew install rbenv`

**We're not done though!**

We still need to do two things:

* 1) Configure your shell to work with rbenv
* 2) Install a version of Ruby

## rbenv init

In order to make `$ ruby` do different things depending on what directory you are in `rbenv` provides a command that outputs autogenerated bash code.

Have a look yourself! - `$ rbenv init -`

This is great but you will want to get bash to execute that code, in your current session.

There is a man page for bash builtins `man builtins`, you can also find zsh builtin extensions in `man zshbuiltins`. 

For now we're only interested in `eval`, which comes from the core bash builtins.

**Combining eval with another command**

`$ eval "$(rbenv init -)"`

You don't need to fully understand this yet, but to break it down:

* The parenthesis creates a subshell to run a command
* The **$** does Command Expansion, which will turn the output of the subshell from output into literal commands
* The double-quotes will convert the output of the expanded subshell into a single parameter for eval

**We're not done yet!**

Running `$ eval "$(rebenv init -)"` will work, but it isn't persistent. 

We want it to run automatically every time we restart our machines and open a Terminal.

There's a useful file `~/.zshrc` or `~/.bash_profile` that contains commands that are run automatically.

Go ahead and add the command to the bottom of `~/.zshrc`!

If you make changes to this file, you can reload it by running

`$ source ~/.zshrc`

### Stop and understand

Phew! That was a lot.

* What does `~` mean in a path?
* What does source do? Is it a command or a builtin?

## Install a version of Ruby

Installing a version of ruby can be done by using rbenv. We should use version 2.5.0

Lets see if you can put together the command for that yourself. 

_Hint_ you might find `rbenv` doesn't have a man page. If you find this the case, most commands provide help if you give them the `-h` option.

## Setting your default Ruby version

You can set your default ruby version by creating a file `~/.ruby-version` with the version number in it.

`cd ~ ; echo "2.5.0" >> ~/.ruby_version`

### Stop and understand

* What does `;` do?
* What does `>>` do?

## Bundler

You will also need Bundler. This is a tool that manages your Ruby Gems on a per project basis and lets you use different versions of the same Gem.

`$ gem install bundler`

## Finalizing Last Pass

`$ cd /usr/local/Caskroom/lastpass/latest/`

`$ open Lastpass\ Installer.app`

# You should now be all setup

And hopefully you learned a lot along the way.

We've automated this process with [First-Boot](https://github.com/madetech/first-boot/), but it's important to understand what is going on!
