## Branch by Abstraction

Branch by Abstraction is a technique which enables your code to change it's feature set at run-time, rather than at compile-time.

If you are using a modular architecture, such as Clean Architecture, this technique is easier to do.

### Case Study

It's easier to tell a story about Branch by Abstraction...

#### Background

Imagine a cloud-based accounting system. It has features to create invoices, process bank statements, create reports, etc. 

There is one report in particular which calculates tax owed to the tax authorities. 

Let's call this the `Create Tax Report` use case.

Only one industry is required by the tax authorities to use this report, let's call this industry the `Construction Industry`

The tax authorities also provided an API to allow automatic filing. Let's call this the `File Tax Report` use case.

The `Create Tax Report` use case had limitations, which meant that it was estimated to be only useful to a small portion of the Construction Industry.

On top of this, the original programmers who built this feature were undisciplined so it was _untested_ and _tightly coupled_ to the UI and the database.

#### Business Need

The sales team noticed that our software was extremely popular with the construction industry.

What we discovered is that most of our competitors did not provide this report, and those that did were desktop-based applications.

They decided that we should increase our market share by targetting marketing at this industry.

#### A series of events

As the number of customers increased, we noticed we received a lot of questions about this feature.
Specifically, why it got calculations wrong in some situations and how to process particular special cases.

#### Invest

The business decided to invest in improving this feature. So we got to work.

Noticing the untested, poorly architected existing feature we gave the business a large ranged estimate (3-12 weeks).

We also agreed with the business that we'd release a first version of a newly improved report to a small percentage of beta-testers.

We began work designing a new report from scratch, using Acceptance Test Driven Development and Clean Architecture.

#### Design Discovery

What we discovered very quickly is that the report needed to combine calculations made on historic reports when calculating the current report.

This meant that the new report needed to be aware of the old report, we needed to depend on the old report!

More alarmingly, do we allow beta-testers to opt out once they've opted in. Does the old report need to be aware of the new report?

**This sounds like circular dependencies**

#### 




