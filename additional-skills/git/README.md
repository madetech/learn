# Git + GitHub

All sections are required.

## Initializing 

* Demonstrate initializing a new git repository.
* Demonstrate creating an empty root commit.
* Can explain the reasoning for creating an empty root commit.

## Basics

* Demonstrate usage of `git status`.
* Demonstrate staging files for commit.
* Demonstrate committing staged files.
* Demonstrate committing a subset of changed files using staged and unstaged files.
* Demonstrate using stash and stash pop.

## Commits, refs, and labels 

* Can explain what a commit ref is.
* Can explain what a tag is.
* Can explain what a branch is.

## Diffs

* Demonstrate viewing the diff of changes.
* Demonstrate viewing staged changes.

## Branches

* Demonstrate creating a new branch.
* Demonstrate deleting a new branch.
* Demonstrates good branch naming conventions (i.e. lowercase using dashes and/or slashes).
* Demonstrate changing branches.
* Demonstrate using stash to change branches when there are conflicts with uncommitted changes.

## Reset

* Demonstrate using a hard reset with a ref.
* Demonstrate using a soft reset with a ref.
* Explain why you'd use a hard reset or a soft reset.

## Merging

* Demonstrate merging two refs to create a new ref.
* Demonstrate resolving merge conflicts.

## Rebasing

* Demonstrate doing a simple rebase of master onto a branch.
* Demonstrate performing an amend to previous commit.
* Demonstrate performing an interactive rebase of a branch.
  * Demonstrate using all possible rebase options.

## Cherry Picking 

* Demonstrate cherry picking a single commit from another branch.
* Demonstrate recording the original commit hash in the commit message.
* Demonstrate cherry picking multiple commits.
* Explain at least one situation when a cherry pick would be appropriate.

## Hunks

* Demonstrate using git add to stage parts of unstaged files (not whole files).
  * Both using the patch subcommand and interactive mode.

## Visualizing Commits

* Can draw a git tree on paper.
* Can explain a rebase with appropriate drawing.
* Can explain a merge with appropriate drawing.

## Working with Remotes

* Demonstrate adding a remote to an existing repository.
* Demonstrate pushing to a remote repository.
* Explain the difference between `git pull` and `git fetch`.
* Explain the difference between `origin/master` and `master`.
* Demonstrate setting the default upstream branch for a local branch.
* Demonstrate force pushing rebases into isolated upstream Pull Request branches.
* Demonstrate force pushing with lease.
  * Can explain what this does and why it is useful.

## Ignoring files

* Demonstrate using .gitignore files.
* Explain what types of files should be ignored.

## GitHub

* Demonstrate opening a Pull Request.
* Demonstrate cleaning up merged branches.
* Demonstrate appropriate rebasing of isolated branches.
* With reference to Continuous Integration, can explain why every commit in `master` should pass all tests.

## Pull Request Etiquette

* Explain aims of code reviews.
* Explain best practices around leaving reviews.
* Explain the impact of the diff size on a Pull Request.
* Explain the impact of long-lived Pull Requests.

## Git Commit Messages

* Awareness that following the ettiquette of your current team is important.
  * E.g. GDS have a [Git style guide](https://github.com/alphagov/styleguides/blob/master/git.md)
  * While the GDS guide is in general very good practice some teams may need to adjust it for their context.
* Explain the importance of "why" in commit messages.
* Demonstrate writing commit messages that explain "why" and "what".
* Demonstrate giving commit messages short and long descriptions using a text editor.
* Demonstrate changing the default text editor that git uses.


