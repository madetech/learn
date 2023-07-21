# Pull requests
When collaborating with others on a project it is often useful to have a
way to present code for review before it enters the codebase so that any 
changes decisions can be discussed and issues can be mitigated. Many 
projects use *pull requests* for this.

Pull requests can take many forms, but we will be focusing on the way GitHub
implements them. Generally other git hosting platforms implement them
similarly.

## To do
If you aren't familiar with Git have a look at the [Git tutorial](/technology/guides/02-Git)

You'll want to pair up so that you can practice the workflow.

## Discuss
Consider why you might create a branch as opposed to committing to
master, what are the pros and cons? How do you decide what belongs in 
a particular branch?

# Exercises
## 1. In your own repository 
Creating and using pull requests within your own repository is easier
than doing it for repositories belonging to others. We'll use this to 
get to grips with the basic workflow.

## 1.1 Create a repository
Create a new GitHub repository, clone it and push an initial commit to
master.

## 1.2 Make changes
Checkout a new branch, make some changes and push them to your new branch.

## 1.3 Create your pull request
Go to your repository on GitHub, you will see a notification asking you if
you want to create a new branch.  
Alternatively you can simply click the link that appears in the terminal
when you push your new branch.  
Fill out some details about the changes you've made and create your pull
request.

## 1.4 Merge into master
There will be a merge button at the bottom of the page. You can also use
`git pull origin <branchname>` from the command line to merge the branch
into master, hence the term 'pull request'.

## 2. Collaborating
## 2.1 Add your partner to your repository
Go to your repository's page in GitHub and click on 'Settings' then 
'Manage access'. From here you should be able to invite your partner.

## 2.2 Create a pull request
Have your partner clone the repository make a branch, push some changes 
and create a pull request.

## 2.3 Review
Go to their pull request, go to the 'Files changed' tab and review their
changes. You can make comments on each line by clicking the `+` icon that
appears as you hover.

## 2.4 Approve and merge
Once you're happy with their changes you can click 'Review changes' and
'Approve'. You can also 'Request changes' if you so desire. Once approved 
you can merge their changes into master.  

## 3 Experiment
You can try:
- Having your partner fork from your repository and merging their changes in
- Different access rules
- Doing a pull request and review with git only

## Resources
- [Branching Strategies](https://www.perforce.com/blog/vcs/best-branching-strategies-high-velocity-development)
- [git request-pull Documentation](https://git-scm.com/docs/git-request-pull)
