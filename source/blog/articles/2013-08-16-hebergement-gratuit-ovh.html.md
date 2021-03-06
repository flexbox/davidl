---
date: 2013-08-16
slug: hebergement-gratuit-ovh
title: Hébergement site internet gratuit avec un nom de domaine chez OVH
page_title: Hébergement gratuit chez GitHub
changefreq: monthly
priority: 0.8
---

Récemment le bigboss de chez OVH à fait une déclaration : il a [interdit github](http://www.ovh.com/fr/a1136.interview-github-octave-klaba-ovh) au seing de son entreprise.

Interdire github, pour des développeurs, au XXIème siècle ...
Je suis un fervent partisan de la fondation mozilla et de ses principes qui considèrent que c'est le partage de connaissance qui est bénéfique pour le web, je n'ai pas trop compris la démarche. "Interdire" github à des développeurs.

En attendant mes nombreux side project avec un nom de domaine prit chez ovh sont hébergés gratuitement chez github #ettoc
Je vais vous expliquer dans cet article comment réaliser cette manipulation.


## Connectez vous à votre interface


![Le manager OVH](blog/legacy/2013/08/ovh.png?raw=true)

Si vous avez choisi d'acheter votre nom de domaine sans hébergement vous pouver changer l'URL de destination pour la faire pointer vers les serveurs de github.

![Modifier votre DNS](blog/legacy/2013/08/DNS-github.png?raw=true)

Pour un domaine comme exemple.fr vous devez utiliser un enregistrement de type A et le faire pointer sur `192.30.252.153`


## Créer un fichier CNAME


Si vous effectuez ces modifications vous devriez avoir une belle erreur 404.

Pour afficher votre nouveau site il suffit de suivre ces 2 étapes :

![La branche gh-pages est importante](blog/legacy/2013/08/gh-pages.png?raw=true)

1. Créer une branche 'gh-pages' et commitez vos modifications sur cette branche.
2. Créer un fichier `CNAME` avec l'adresse de votre site (ici c'est pokemonbreakpoint)

Il ne vous reste plus qu'a attendre une dizaine de minutes de propagation et vous voici avec votre nouveau site gratuit en hébergement.
