# Git Tutorial

Writing code is collaborative and requires large amounts of editing sometimes at
a blistering pace, naturally a number of problems arise as a result of this and
for those problems we have source control.

Git is a program that provides source control originally written Linus Torvalds
to replace the controversial use of BitKeeper in the development of Linux. Other
than Git, you may also encounter Subversion on occasion.

## To Do

* Work through [Learn Enough Git to Be Dangerous](https://www.learnenough.com/git-tutorial)
* Test your knowledge by working through the exercises below

## Stop and Understand

What is the purpose of source control?

How does Git differ from other source control tools?

Explain the Git tree visually

Draw a Git tree that has 8 commits, where a branch was created off of the second commit and merged back in after 3 further commits.

Explain what the difference between `git pull` and `git fetch` is

Draw and explain how `git merge` works compared to `git rebase`

## Exercises

### 1.0 Initialising a new Git repository

Create a new directory

Create a new Git repository

Add a file with the text "Hello" from the command line

Add this file and commit it using Git

### 1.1 "Pushing" to GitHub

Create a new repository on GitHub

Setup your local repository to have a new remote

Push your code to GitHub

### 1.2 Working with changes

Open the file in your text editor and make some changes to it

Stash these changes

Unstash them and commit them

Reset to the first commit you made using the `--hard` flag

Recover the previous commit using `reflog`

### 1.3 Branching

Create a new branch and switch to it

Add and commit a new file with your name in it

Switch back to the master branch and merge your branch in

Delete your merged branch

### 1.4 Aliases

Add the following alias:
```bash
git config --global alias.l "log
    --graph
    --pretty=oneline
    --abbrev-commit
    --decorate"
```

Compare `git log` and your new alias `git l`

### 1.5 Diffs

Make changes to both files

Using `git diff` identify your changes

Add one of the file but do not commit it

Compare `git diff` to `git diff --staged`

## Resources

- [Git](https://git-scm.com/)
- [Git tutorial](https://www.learnenough.com/git-tutorial)
- [Merging vs Rebasing](https://www.atlassian.com/git/guides/merging-vs-rebasing)
- [Git challenges](https://try.github.io/levels/1/challenges/1)
- [Codecademy - Learn Git](https://www.codecademy.com/learn/learn-git)
- [Mastering Git](https://thoughtbot.com/upcase/mastering-git)
- [5 Useful Tips For A Better Commit Message](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
- [Tig - TUI for Git](https://github.com/jonas/tig)
- [`git bisect` Documentation](https://git-scm.com/docs/git-bisect)
- [Code Sleuthing with Git](https://robots.thoughtbot.com/code-sleuthing-with-git)
