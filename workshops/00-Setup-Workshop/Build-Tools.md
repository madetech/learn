# Build Tools

## xcode cli tools

Under the hood macOS is a Unix operating system with it's roots in BSD.

In order to compile source code you need some tools that will do compilation.

While Ruby code isn't compiled, the most accepted way to install Ruby itself is to compile it from source. You will also find that homebrew needs to compile some things.

On macOS the accepted way of doing this is by installing xcode

`$ xcode-select --install`

_if you already installed homebrew, this will say that you've already got it installed._

## Homebrew

macOS does not come with it's own package manager (like Linux does), however there is a community that has put one together. 

You can install it by running

`$ curl -fsS 'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby`

### Stop and understand

* Describe what `-fsS` does
* Describe what the `|` operator does

_Hint_

* `$ man curl` - look up the flags
* `$ man bash` - look up pipelines


## To Do

* Work through section 1.2 and 1.3 in [Learn Enough Command Line to be Dangerous](https://www.learnenough.com/command-line-tutorial) (just before "Our first command").
* Install xcode cli tools
* Install Homebrew

