---
title: playlists
layout: default
---
<meta charset="utf8"/>

{% for list in site.playlists %}
1. <a href="{{ list.url | prepend: '.' }}">{{list.name}}</a> -- {{ list.description }} {% endfor %}

