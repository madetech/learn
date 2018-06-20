# Build Tools

## xcode cli tools

Under the hood macOS is a Unix operating system with it's roots in BSD.

In order to compile source code you need some tools that will do compilation.

While Ruby code isn't compiled, the most accepted way to install Ruby itself is to compile it from source. You will also find that homebrew needs to compile some things.

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
