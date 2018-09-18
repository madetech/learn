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

## What could this team do better?

**Have a set of scripts in version control for setting up Linux and macOS.**

* This would remove the production parity problem.

We'd still need to:

* Maintain 2 versions (macOS and Linux), which could grow for different Linux flavors or Windows.
* Deal with Operating System level differences.

## Virtual Machine

Eventually the desire to obtain full production parity - and remove operating system level differences - will lead to [VirtualBox](https://www.virtualbox.org/) (or similar).

What VirtualBox does is it emulates a full system architecture inside your Operating System, so you can run the same Linux distribution or macOS, Windows or your favorite Linux flavor.

**Vagrant!**

Vagrant lets you define a `Vagrantfile` in the root of your project which will automatically setup a Virtual Machine.

**Virtual Machines...**

The trouble with virtual machines

* They are really slow (especially if you're running a GUI).
* They use a lot of memory (expect 400+MB).
* They use a lot of disk space (a whole operating system).
* They will drain your battery.

You also can't (easily) rely on your Virtual Machine setup to machine production.

## LXC

Before Docker there was [LXC](https://en.wikipedia.org/wiki/LXC), which provides a way to spin up a whole "Virtual Machine" with none of the overhead. 

Early versions of Docker even relied on LXC as the containerization engine!

Coming from Virtual Machines, LXC was amazing since you could have a whole Linux distribution running inside 4MB of RAM!

**Downsides...**

* Only ran on Linux
* Required really arbitrarily specific versions of Linux kernels 
* \*Really\* complex to configure, maintain and manage.
* Production parity, but hard to manage and deploy configurations

## Then Docker came along

It aims to be a fast way to run your applications in the same environment, everywhere.

* Fast
* Low disk space usage
* Low memory footprint
* Runs on Windows, macOS and Linux
* Easy to configure and manage - configuration as code!
* Production parity - run your Dockerfile everywhere

The downside is that we have to use Docker everywhere - which means adding overhead to our development process.

