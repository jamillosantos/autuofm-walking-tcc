---
layout: default
---
{% for post in site.posts  %}
  {% capture this_group %}{{ post.date | date: "%B de %Y" }}{% endcapture %}
  {% capture next_group %}{{ post.previous.date | date: "%B de %Y" }}{% endcapture %}

  {% if forloop.first %}
  <h2>{{this_group}}</h2>
  {% endif %}
  <h3>{{ post.date | date: "%d de %B de %Y" }} {{ post.mood | ':question:' }}</h3>
  {{ post.content }}
  {% if forloop.last %}
  {% else %}
    <hr />
    {% if this_group != next_group %}
    <h2>{{next_group}}</h2>
    {% endif %}
  {% endif %}
{% endfor %}
