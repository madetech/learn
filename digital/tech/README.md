{% capture title %}
Technology
{% endcapture %}

{% capture text %}
Modern technologies are used to build products that are tailored to the needs of you and your business.
{% endcapture %}

{% include digital_element_header.html title=title text=text %}
{% capture content %}
<div class="container col-md-10 text-center">
  <h2>Hone your skills</h2>
  <p class="lead">
    Below are a number of resources for improving your programming and general technical ability, lovingly crafted by the team at Made Tech.
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Katas</h3>
      <p class="card-text">Solo training exercises</p>
      <a href="/katas" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Workshops</h3>
      <p class="card-text">Practical deep dives</p>
      <a href="/workshops" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Videos</h3>
      <p class="card-text">Walkthroughs, guides, tutorials</p>
      <a href="/screencasts" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

<div class="container col-md-10 text-center">
  <h2>Core skills</h2>
  <p class="lead">
    Language agnostic skills revelant to all developers
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Test Driven Development</h3>
      <p class="card-text">The number one way to ensure reliable software</p>
      <a href="/core-skills/tdd" class="btn btn-success">Learn more</a>
    </div>
  </div>

  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Infrastructure</h3>
      <p class="card-text">Building and maintaining infrastructure for applications</p>
      <a href="/core-skills/tdd" class="btn btn-success">Learn more</a>
    </div>
  </div>

  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Frontend Web Development</h3>
      <p class="card-text">Gain an in depth understanding of modern HTML and CSS</p>
      <a href="/core-skills/frontend-web-development/" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

<div class="container col-md-10 text-center">
  <h2>Additional skills</h2>
  <p class="lead">
    More niche skills
  </p>
</div>

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Web Application Development</h3>
      <p class="card-text">Developing applications using React.js</p>
      <a href="/core-skills/web-application-development" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">C#</h3>
      <p class="card-text">Developing applications in C# with .NET Core</p>
      <a href="/additional-skills/c-sharp-and-dotnet" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h3 class="card-title mt-0">Source Control</h3>
      <p class="card-text">Understand how to use Git and manage your source code</p>
      <a href="/additional-skills/git" class="btn btn-success">Learn more</a>
    </div>
  </div>
</div>

## Other resources
[Articles](/articles) - Light reading  
[Goals](/goals) - For goal directed learning  
[Koans](/koans) - Learn the intricacies of programming languages  
[Ideas](/ideas) - Ideas for self-directed learning  
[Seminars](/seminars) - Seminars for mentors  
[Sparring](/sparring) - Programming practice  

{% endcapture %}

{% include digital_element_container.html content=content %}
