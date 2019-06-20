{% capture title %}
Technology
{% endcapture %}

{% capture text %}
Modern technologies are used to build products that are tailored to the needs of you and your business.
{% endcapture %}

{% include digital_element_header.html title=title text=text %}

{% capture resources %}
* [Core Skills](technology/core-skills) for learning.
{% endcapture %}

{% capture content %}
## Hone your skills
Below are a number of resources for improving your programming and general technical ability, lovingly crafted by the team at MadeTech.

<div class="row">
  <div class="col-sm">
    <div class="card-body card-border">
      <h5 class="card-title">Katas</h5>
      <p class="card-text">Solo training exercises</p>
      <a href="/katas" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h5 class="card-title">Workshops</h5>
      <p class="card-text">Practical deep dives</p>
      <a href="/workshops" class="btn btn-success">Learn more</a>
    </div>
  </div>
  <div class="col-sm">
    <div class="card-body card-border">
      <h5 class="card-title">Videos</h5>
      <p class="card-text">Walkthroughs, guides, tutorials</p>
      <a href="/screencasts" class="btn btn-success">Learn more</a>
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

{% include digital_element_container.html resources=resources content=content %}
