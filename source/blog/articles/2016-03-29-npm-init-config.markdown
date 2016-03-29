---
date: 2016-03-29
slug: npm-init-config
title: "Configurer les valeurs par défaut de Node.js"
description: "Gagner du temps lors de l’initialisation de vos nouveaux projets avec node.js en configurant les valeures par défaut"
image: https://c2.staticflickr.com/2/1704/25505829834_b3995d8225_b.jpg
page_title: Pimp your npm init
page_emphasis: Gagnez du temps pour vos nouveaux projets
changefreq: monthly
priority: 0.5
---

Je viens d’installer une nouvelle machine et en parcourant la documentation de [npm init](https://docs.npmjs.com/cli/init) j’ai remarqué que l’on pouvait __utiliser des valeurs par défaut pour les nouveaux projets__.

Je voulais simplement partager la configuration avec ceux qui ne l’ont pas encore fait et conserver une référence pour moi même :

~~~shell
  $ npm config set init.author.name "David Leuliette"
  $ npm config set init.author.email dleuliette@gmail.com
  $ npm config set init.author.url http://davidl.fr
  $ npm config set init.license MIT
~~~

La prochaine fois que vous utiliserez `npm init` ces valeurs seront déjà par défaut. Un __gain de temps considérable__ !

## Encore une petite chose

Si vous souhaitez en savoir plus sur votre configuration `npm config list` vous affichera des informations utiles. Si vous souhaitez aller plus loin vous pourvez lire les pages du manuel avec `npm help config`.

Bonne lecture !
