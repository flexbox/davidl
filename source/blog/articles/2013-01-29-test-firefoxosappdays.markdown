---
date: 2013-01-29 12:56:29+00:00
slug: test-firefoxosappdays
title: hackathon firefoxOS
page_title: 'J''ai testé pour vous #FirefoxOSappdays'
---

Samedi matin le réveil sonne à 5h.
Wake up! Direction Paris pour une journée de hackathon sur le nouveau système de mozilla : [firefoxOS](http://fr.slideshare.net/nitot/firefox-os-appdays-paris-par-tristan-nitot-hack-learn-celebrate).

Sur la route je récupère le fleuron des développeurs web nordiste @[nfroidure  ](http://twitter.com/nfroidure)& @[rbwebdev](http://twitter.com/rbwebdev)

![#firefoxOSappdays pass](http://davidleuliette.com/wordPress/wp-content/uploads/2013/01/badge-224x300.jpg)

## Organisation

Très bon accueil du staff. On nous remet ta rapidement notre sac de goodies avec de beaux stickers pour décorer nos laptop !
Juste une remarque pour la clef USB dans mon cas c'est soit je regarde le contenu, soit je branche ma souris.... L'idée était bonne mais niveau UX c'est zéro :)

![usb key marketplace](http://davidleuliette.com/wordPress/wp-content/uploads/2013/01/firefox-marketplace-USB-212x300.jpg)

Petite conférence avant le début de l'épreuve : présentation du design adaptatif et du [projet Gaïa](https://github.com/GeekGrunge/gaia) ( UI guideline for firefoxOS  )

@[jeremiepat](http://twitter.com/jeremiepat) je t' ai grillé direct pour le fork des slides de [Brad Frost](http://www.slideshare.net/bradfrostweb/) ;) C'est un excellent choix.

![Le web est une jungle](http://davidleuliette.com/wordPress/wp-content/uploads/2013/01/mozilla-conf-300x263.jpg)

Nous sommes tous les 2 d'accord sur un point : apprendre à coder des styles en cascade **maintenable** est capital. Le css spaghetti y en a marre!


## Une idée d'application ?


10h30 la ch'nord dev team cherche rapidement une salle : it's time to code !

J'ai déjà mon idée d'application : une todo list simple et rapide. Mon objectif de la journée sera essentiellement d'aller étudier la doc pour lui donner un look'n'feel d'application native.

J'ai décidé d'utiliser du javascript avec [localStorage](https://developer.mozilla.org/en-US/docs/DOM/Storage) pour respecter ma baseline principale : la rapidité.
En discutant avec @rik24d, dev chez mozilla, il me conseille d'utiliser [indexedDB](https://developer.mozilla.org/en-US/docs/IndexedDB) OK dude let's dig on this!

Pour ceux qui n'ont pas d'idée aucun problème tout est fait pour nous aider à démarrer.
L'équipe suggère des idées d'application : un réveil géolocalisé, un lecteur de flux RSS, un GPS piéton pour optimiser ses déplacements...


## Il vous reste 3 heures


La journée est passé terriblement vite. J'ai perdu pas mal de temps à digérer la doc avant de véritablement pouvoir commencer à coder mon application.

![No Brain app](http://davidleuliette.com/wordPress/wp-content/uploads/2013/01/nobrain-app-224x300.jpg)

18 h RDV dans la salle de conférence.
2 min pour pitcher votre application devant l'auditoire et convaincre le jury.

Je présente mon appli de to-do list : [NoBrain](http://davidleuliette.com/nobrain/).
Au final je n'ai pas utilisé innerDB pour des problèmes de performance (à confirmer car lors d'un hackathon pas le temps de tout tester)
Je n'ai pas eu le temps non plus de préparer mon build et soumettre mon application au store, à vrai dire 5min avant la présentation je teste sur un vrai Firefox phone et la c'est le drame : petit décalage de mes icônes pour supprimer une note f*ck! J'improviserais pendant la présentation pas le temps de corriger...

_Note pour plus tard le secteur des applis de todo est complètement bouché. Pas loin de 6 variantes sont présentées. Pfff j'aurai du faire mon application de coussin péteur xD!_

Le staff mozilla nous remercie : Paris tient un nouveau record mondial avec 35 applications présentées.

![#prestige +1 point](http://davidleuliette.com/wordPress/wp-content/uploads/2013/01/applause-300x84.png)

Au final les nordistes repartent avec un demi-téléphone -_-' @rbwebdev a temporté en team avec une application de flux rss.

Le cerveau complètement fondu suite à cette journée intense, mais super content d'avoir participé à cet évènement.
Merci à l'équipe mozilla d'avoir organisé cette journée, grâce à vous je ne dors plus la nuit et je cherche constamment une idée d'application qui pourra être utile sur le marketplace.

P.S. Merci encore à l'équipe de la cafétéria (qui ne me lira probablement pas mais on ne sais jamais) les repas étaient top !


## Ressources


Voici les liens que j'ai bookmarqué pendant l'évènement :

[ http://smus.com/mobile-web-app-tech-stack/]( http://smus.com/mobile-web-app-tech-stack/)

[https://developer.mozilla.org/fr/docs/Applications/Pour_d%C3%A9veloppeurs_web](https://developer.mozilla.org/fr/docs/Applications/Pour_d%C3%A9veloppeurs_web)

[https://marketplace.firefox.com/developers/](https://marketplace.firefox.com/developers/)

[https://hacks.mozilla.org/2012/11/firefox-os-video-presentations-and-slides-on-the-os-webapis-hacking-and-writing-apps/](https://hacks.mozilla.org/2012/11/firefox-os-video-presentations-and-slides-on-the-os-webapis-hacking-and-writing-apps/)

[https://developer.mozilla.org/fr/docs/Applications/Pour_commencer](https://developer.mozilla.org/fr/docs/Applications/Pour_commencer)
