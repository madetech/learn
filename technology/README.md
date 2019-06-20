{% capture title %}
Learn technology best practices
{% endcapture %}

{% capture text %}
Use these resources to build reliable and maintainable digital services, APIs and technology platforms that answer user needs.
{% endcapture %}

{% include digital_element_header.html title=title text=text %}
{% capture content %}
<div class="container col-md-10 text-center">
  <h2>Hone your skills</h2>
  <p class="lead">
    Resources for improving your programming and software engineering skills, lovingly crafted by the team at Made Tech.
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Tutorials</h3>
      <p class="card-text">
        Learn practical skills such as setting up your development environment, debugging and refactoring your code.
      </p>
      <a href="/tutorials" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Videos</h3>
      <p class="card-text">
        Watch our video guides to get to grips with disciplines such as clean architecture and test-driven development.
      </p>
      <a href="/videos" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Katas</h3>
      <p class="card-text">
        Develop your skills using these training exercises; Ideal for those looking to improve their test-driven development.
      </p>
      <a href="/katas" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Koans</h3>
      <p class="card-text">
        Gain a deep understanding of a range of programming languages in an enjoyable practice environment.
      </p>
      <a href="/koans" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

<div class="container col-md-10 text-center">
  <h2>Fundamental software engineering skills</h2>
  <p class="lead">
    Language agnostic software engineering skills and assessments to develop and test yourself against.
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Test-driven development</h3>
      <p class="card-text">
        Build reliable and maintainable applications using TDD.
      </p>
      <a href="/core-skills/tdd" class="btn btn-success">Learn more</a>
    </div>
  </div>

  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Infrastructure</h3>
      <p class="card-text">
        Use code to describe and build your cloud infrastructure.
      </p>
      <a href="/core-skills/infrastructure" class="btn btn-success">Learn more</a>
    </div>
  </div>

  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Frontend development</h3>
      <p class="card-text">
        Learn the fundamental building blocks of the web.
      </p>
      <a href="/core-skills/frontend-development" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

<div class="container col-md-10 text-center">
  <h2>Technology specific skills</h2>
  <p class="lead">
    Skills specific to particular technology stacks, whether frontend, backend or infrastructure.
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">React</h3>
      <p class="card-text">
        Develop applications using a component-based architecture.
      </p>
      <a href="/core-skills/react" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">C#/.NET Core</h3>
      <p class="card-text">
        Craft APIs using Microsoft’s open source language and framework.
      </p>
      <a href="/additional-skills/c-sharp-and-dotnet" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Git</h3>
      <p class="card-text">
        Manage your source code using the most popular version control system.
      </p>
      <a href="/additional-skills/git" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

## Other resources
* [Articles](/articles) - Light reading  
* [Goals](/goals) - For goal directed learning  
* [Ideas](/ideas) - Ideas for self-directed learning  
* [Seminars](/seminars) - Seminars for mentors  
* [Sparring](/sparring) - Programming practice  

{% endcapture %}

{% include digital_element_container.html content=content %}
