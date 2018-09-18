# A journey of Production-Parity

Imagine a single programmer. They wrote some code, shipped it to production however they liked.

All was good in this single programmer's world, they knew their machine well and they knew production well.

**Another Programmer...**

Then management want to increase how many features can be built per week, so they hire another programmer.

The first programmer teaches the second programmer how to setup their machine - it takes them all day to unpick what stuff the first programmer is using.

They both find themselves doing a lot of manual installations of services like postgres and nginx. 

They copy lots of configuration files with a year of knowledge baked into them.

Finally three days in, they get the whole thing working on the second programmers machine. All is well again. 

**And another...**

Another programmer joins - they use macOS. The first two programmers use Linux.

Nobody knows how to configure any of the services on macOS, so they decide to use a virtual machine.

Within a few days and a bit of tinkering, they get the whole thing working and all is great again.

**A bug!**

There's a bug in production! One person can reproduce it - but nobody else can. Why is that. 

Turns out there's a missing configuration file on the two newest programmer's machines.

They quickly fix their machines and all is well again. 

All in all they spent three days scratching their heads.

# What could this team do better?

**Have a set of scripts in version control for setting up Linux and macOS.**

* This would remove the production parity problem.

We'd still need to:

* Maintain 2 versions (macOS and Linux), which could grow for different Linux flavors or Windows.
* Deal with Operating System level differences.

# An Operating System difference

