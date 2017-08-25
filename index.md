---
layout: default
title: Home
redirect_to:
  - about/index.html
---

<div class="posts">
  {% for post in site.posts %}
  <div class="post">
    <a name="{{ post.title | downcase | url_encode }}"><h1 class="post-title">
      <a href="{{ site.baseurl }}{{ post.url }}">
        {{ post.title }}
      </a>
    </h1>
    <h4> {{ post.subtitle }} </h4>

    {{ post.content }}

  </a>
  <hr class="lighter"/>

  {% endfor %}
</div>
