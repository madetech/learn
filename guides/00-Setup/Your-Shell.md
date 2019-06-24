# Your Shell

By default your shell is the `Bourne-Again shell` (bash) and it will be the default installation.

This is very minimal and most programmers choose to customise it or even pick an alternative shell.

The alternative shell [zsh](http://www.zsh.org/) with [oh-my-zsh](http://ohmyz.sh/) is easy to get going with which can be installed by running

`$ brew install zsh`

`$ curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh`

This will install a fairly comprehensive and useful set of helper plugins that make using the terminal much more enjoyable.

On top of this zsh is a superset of bash, so the two are largely interchangeable.

You will also need make zsh your default shell.

`$ chsh -s /usr/local/bin/zsh`

There is an exhaustive guide [here](https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/) if you get stuck.

## Stop and understand

* What is `chsh`? 

## To Do

* Work through section 1.4, 1.5 and 1.6 in [Learn Enough Command Line to be Dangerous](https://www.learnenough.com/command-line-tutorial) (just before "Our first command").
* Install an alternative shell (zsh)
* Install some plugins (oh-my-zsh)
* Make zsh your default shell
