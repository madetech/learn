---
layout: main
title: Content Moved
published: 21 July 2023
---

{% capture title %}
Page has been moved
{% endcapture %}

{% capture text %}
This content has been moved to <a href="/technology/katas/">/technology/katas/</a>
{% endcapture %}

{% include digital_element_header.html title=title text=text %}
{% capture content %}
<div class="container col-md-10 text-center">
  <h2>We're under-going a re-design</h2>
  <p class="lead">
    We are re-organising and re-designing learn.madetech.com to ensure the site continues to meet its purpose for the future.
  </p>
</div>
{% endcapture %}

{% include digital_element_container.html content=content %}