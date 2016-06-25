![Camp logo](https://raw.githubusercontent.com/drupalcampgr/static/master/images/logo.png)

### Introduction to BOA

[Bill Seremetis](http://www.srm.gr)  
Drupal Implementor  
https://www.drupal.org/u/bserem

Note:
* using Drupal since 2008
* been working as "one man show" for years. That means development, theming, support, hosting
* active member of the community (modules, profiles, translations, presentations)
* worked on several big projects, and many more small ones
* there was a time where I believe I knew almost every single greek drupal developer
* the word implementor is a tribute to the creators of Zork

---

### First things first

* Thanks for everybody who made Drupal Camp Athens possible
* Thanks to the developers of BOA and Aegir
* Thank you for being here!

---

### Cover the basics

* Do you host your websites yourselves?

* Do you use a shared server?
* * Do you host more than 10 sites? 20? 30?
* * Are you happy with it?

* Do you maintain your own server?
* * Can you sleep at night?

---

### Happy Moments...

*Me:*
I would like JSmin to be available on the server. It can be installed with `pecl install jsmin`

*Host:*
JSMin has to be compiled for each version of PHP. This is possible, but we have to charge this with 60 Euros for 30 minutes of work.

> I also asked for tmux and global drush...

Note:
* This happened on a shared server that costs 200e/month
* I can host 30 sites for 3 months with 60 euros
* We live in 2016, I consider a JS compressor a must have!

---

### What is BOA

> BOA stands for Barracuda, Octopus, Aegir

* Barracuda and Octopus are a set of custom bash scripts and configs, created by [Omega8.cc](http://www.omega8.cc). Open source of course.
* Barracuda maintains the system and Aegir.
* Octopus helps you manage your Drupal sites.
* Aegir is a well known, and mature, system for managing Drupal sites, built on Drupal! It leverages Drupal's multisite capabilities.
* **The main concept is that it shares code between your sites, so as to lower CPU and RAM usage because of how OPCache works.**

---

### What can it do for you?

* With BOA you can worry about Drupal, and not about hosting Drupal.
* Within minutes you can have a fully working LEMP system, **fine tuned for Drupal**, supporting PHP 5.3 to 7.0, HHVM, MariaDB 10, Redis, HTTP/2 or SPDY, Apache SOLR and a properly configured firewall.
* Bonus: **self-healing scripts and automated backups** (xdrago and backboa)
* Extra Bonus: BOA has performance [modules installed](https://github.com/omega8cc/boa/blob/master/docs/MODULES.txt), and sometimes enabled, by default and transparently (eg entity_cache, redis)

Note:
advagg, boost, esi, readyonlymode, securesite are only some of the modules that BOA includes by default **on every site**

---

### Why BOA / BOA Benefits

* it is ~~fast~~ **blazing fast**
* it is secure*
* it is 100% open source
* the project is [maintained on Github](https://github.com/omega8cc/boa), and they are open to suggestions
* it is based on Debian
* can be used for development or production, including local development
* it supports Lets Encrypt! Without you doing anything!
* it doesn't require you to learn something new*
* did I say it has [Skynet mode](https://github.com/omega8cc/boa/issues/557)? BOA sites were not affected by Drupalgeddon.

Note:
* With Docker you must learn how to maintain Docker. Same goes for Vagrant, or any other technology out there.
* BOA is Drupal, you already know Drupal!

---

### What BOA can't do

* it can't save you from stupidity (sudo rm -rf /)
* it doesn't offer email accounts

> Fact: you should **NOT** send any email from BOA hosted sites. Use SMTP.

Note:
*Do not send drupal emails over phpmail.

---

### Good to Know

* BOA is extremely fast when you don't need to reach the DB all the time, because of aggressive caching

---

### Dev Stage Production with BOA

With BOA you easily create clones or migrate/rename sites.
Aliases with `.dev.` aren't accesible by bots, and fall into development mode automatically.

Note:
* there have been some changes about .dev. urls latelly
* you can't disable aggregation on a url without .dev. in it

---

### Makefiles
```
api = 2
core = 8.x

projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "https://ftp.drupal.org/files/projects/drupal-8.1.3.tar.gz"
```

[click for a more complete example](https://github.com/drupalcampgr/boa-session/blob/master/makefiles/D744_srm_most_used.make)

---

### Real Time Demo

Note:
* Explain makefiles
* Add two platforms
* Add a site
* Clone the site
* Migrate the site

---

## Questions?

[Please review this presentation](https://srm.webform.com/form/20804)

[unb.gr/boarev](http://unb.gr/boarev)


*This presentation was made possible using open source software: [Reveal JS](https://github.com/hakimel/reveal.js), [Debian](http://www.debian.org), [VirtualBox](https://www.virtualbox.org/).*