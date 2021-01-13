---
layout: default
list: references-keys
description: statically generated ytube playlists (jekyll)
---
{% assign hours= site.time | date: "%H" | plus: 137 %}
{% if site.data.list %}
{% assign random = page.title.size | plus: hours | modulo: site.data.lists[page.list].size %}
{% assign videoid = site.data.lists[page.list][random] %}
<!-- {{hours}} {{random}}/{{site.data.lists[page.list].size}} -->
{% endif %}

### youtube w/o ads [ytnoad.htm](ytnoad.htm)
*[{{site.data.ipfs.qm}}](https://{{site.data.ipfs.bafy}}.ipfs.dweb.link/ytnoad.htm#{{videoid}})* ({{random}})


{% if site.playlists %}
## A few of my ytube playlists :

1. [ilike](playlists/ilike-keys.html)
1. [messages](playlists/messages-keys.html)
2. [MikCol music](playlists/MikCol-music-keys.html) (for [dancing](playlists/danceable-keys.html)) ([mkl](playlists/mlk-music-keys.html))
3. [Experimental Tango](playlists/tango-experimental-keys.html)
4. [Trials Tango](playlists/tango-trials-keys.html)
5. [Tango materials](playlists/tango-worshop-keys.html) for [tango](playlists/tango-keys.html) workshops
5. [tandas](playlists/tandas-keys.html)
6. [Meditation music](playlists/medit-keys.html)
7. [Wuotai music](playlists/wuotai-music-keys.html) (for [WuoTai](playlists/wuotai-keys.html) practice)
8. [healing](playlists/healing-keys.html) &amp; [Quanta](playlists/quantum-keys.html)
9. [technologies](playlists/techno-keys.html) &amp;
   [security](playlists/security-keys.html)
1. [4th evolution](playlists/4th-evolution-keys.html)
1. [GC-Bank](playlists/gcbank-keys.html), [M4GC](playlists/m4gc-keys.html), [ipfs](playlists/ipfs-keys.html)
1. [blockchain](playlists/blockchain-keys.html) &amp; [crypto](playlists/crypto-keys.html)

10. [gurus](playlists/gurus-keys.html),
   [water](playlists/water-keys.html),
   [mycelium](playlists/god-keys.html), &amp; [references](playlists/references-keys.html)
11. [...](playlists/listen-later-keys.html)
12. other [playlists](playlists.html)
13. the [huge](ytlist.html) list.

{% endif %}


### json :

* [view-later.json](view-later.json)
