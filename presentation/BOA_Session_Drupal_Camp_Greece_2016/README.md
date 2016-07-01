![Camp logo](https://raw.githubusercontent.com/drupalcampgr/static/master/images/logo.png)

### Introduction to BOA

Note:
This session is targeted towards developers,
designers, sysadmins etc. We will speak about a
hosting stack, but one that provides such tools that
would ease things for anybody that deals with Drupal.

---

Bill Seremetis (@bserem)  
Drupal Implementor  
https://www.drupal.org/u/bserem

Note:
* working with Drupal since 2008
* active member of the community (modules, profiles, translations, presentations, workshops)
* the word implementor is a tribute to the creators of Zork
* been working as "one man show" for years: dev, theming, support, hosting -> had to rely on good servers

---

### First things first

* Thanks for everybody who made Drupal Camp Athens possible
* Thanks to the developers of BOA and Aegir
* Thank you for being here!

---

### Cover the basics

* Do you host your websites yourselves?

* Do you use a shared server?  
Do you host more than 10 sites? 20? 30?  
Are you happy with it?  

* Do you maintain your own server?  
Can you sleep at night?

* Do you host any huge sites?  
100k visits per day  
DBs bigger than 10g

---

### Path to enlightenment

If you answered yes on the previous slide, except for the happy and sleep questions, then BOA might interest you.

BOA is not for the faint of heart. You will have control of your machine, and you will be able to do many great things with it.

Note:
* If you host BOA youselves, you will be root. This is a good thing.
* If you go for hosted BOA, you have less things to worry for.

---

## BOA

---

### What is BOA

> BOA stands for Barracuda, Octopus, Aegir

* Barracuda and Octopus are a set of custom bash scripts and configs, created by [Omega8.cc](http://www.omega8.cc). Open source!
* Aegir is a well known, and mature, system for managing Drupal sites, built on Drupal! It leverages Drupal's multisite capabilities.
* **The main concept is that it shares code between your sites, so as to lower CPU and RAM usage because of how OPCache works.**

---

### What can BOA do for you?

* With BOA you can worry about Drupal, and not about hosting Drupal.
* Within minutes you can have a fully working LEMP system, **fine tuned for Drupal**, supporting PHP 5.3 to 7.0, HHVM, MariaDB 10, Redis, HTTP/2 or SPDY, Apache SOLR and a properly configured firewall.
* Bonus: **self-healing scripts and automated backups** (xdrago and backboa)
* Extra Bonus: BOA has performance [modules installed](https://github.com/omega8cc/boa/blob/master/docs/MODULES.txt), and sometimes **enabled** by default and transparently (eg entity_cache, redis)

Note:
* advagg, boost, esi, readyonlymode, securesite are only some of the modules that BOA includes by default **on every site**
* included means not enabled, but exists for you to enable

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
* BOA is Drupal and Drush running on GNU/Linux. Nothing fancier, no new commands.

---

### Skynet

>Then #drupageddon happened, and we realized that we could make all existing BOA systems secure, auto-magically, in the first 60 minutes after #drupageddon alert was published.

Omega8.cc - 20150105

---

### What BOA can't do

* it can't save you from stupidity (sudo rm -rf /)
* it doesn't offer email accounts

> Fact: you should **NOT** send any email from BOA hosted sites. Use SMTP.

Note:
* Self healing runs every minute, and can save you from bad permissions
* If you plan to give shell access to customers, you are secured by self healing scripts

---

### Good to Know

* BOA is extremely fast when you don't need to reach the DB all the time, because of aggressive caching
* Of course it can be used for sites with constant DB writes too, and has predifined config settings and scripts to create a proper my.cnf file!

Note:
* dozens of small presentation sites who are usually serving static content, running from a single server
* Huge sites, with tens of thousands of anonymous visitors (no need to reach the DB)

---

### Easy Config

You can configure BOA easily by [touching empty files in the server](https://github.com/omega8cc/boa/blob/5ade4c44a2a305ad5cfab7c9280bd0341df773c4/docs/ctrl/system.ctrl)

BOA has an extensive documendation, that gets better every day.

---

### Achievements

* Organisers of this camp successfully serve more than 100k visitors per day with a 4gb RAM VM using BOA
* I personally host more than 20 Drupal sites with a 2gb RAM VM. With minimum effort.
* With proper planning you could go up to a hundred!  
eg: Small sites, with shared codebase, different content and theming.

Note:
min **suggested** RAM is 2gb, but it also runs with 1

---

![Sites in BOA](https://raw.githubusercontent.com/bserem/bserem.github.io/master/BOA_Session_Drupal_Camp_Greece_2016/images/sites.jpg)

---

### Happy Moments...

*Me:*
> I would like JSmin to be available on the server. It can be installed with  
`pecl install jsmin`

*Host:*
> JSMin has to be compiled for each version of PHP. This is possible, but we have to charge this with 60 Euros for 30 minutes of work.

Note:
* This happened on a shared server that costs 200e/month
* I also asked for tmux and global drush...
* I can host 30 sites for 3 months with 60 euros
* We live in 2016, I consider a JS compressor a must have!

---

### BOA is without issues?

####No, certainly not.

Like with any system you maintain:
* You need to be up to date
* You need to read the changelog before updates
* Things can go awfully wrong, especially if you wanna live dangerously (eg: no backups)

---

## Aegir

---

### Dev Stage Production with Aegir

With Aegir you can easily create clones,  
migrate or rename sites.  

In BOA aliases with `.dev.` aren't accesible by bots, and fall into development mode automatically.

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
* Explain makefiles https://github.com/drupalcampgr/boa-session/blob/master/makefiles/D744_srm_most_used.make
* Add two platforms
* Add a site
* Clone the site
* Migrate the site

---

## Questions?

[Please review this presentation](https://srm.webform.com/form/20804)

[unb.gr/boarev](http://unb.gr/boarev)


*This presentation was made possible using open source software: [Reveal JS](https://github.com/hakimel/reveal.js), [Debian](http://www.debian.org), [VirtualBox](https://www.virtualbox.org/).*