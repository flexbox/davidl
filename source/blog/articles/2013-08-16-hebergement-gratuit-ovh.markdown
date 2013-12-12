---
date: 2013-08-16 12:05:05+00:00
slug: hebergement-gratuit-ovh
title: Héberger gratuitement votre site web sur github avec un nom de domaine chez OVH
page_title: Hébergement gratuit chez GitHub
---

Récemment le bigboss de chez OVH à fait une déclaration : il a [interdit github](http://www.ovh.com/fr/a1136.interview-github-octave-klaba-ovh) au seing de son entreprise.

Interdire github, pour des développeurs, au XXIème siècle ...
Je suis un fervent partisan de la fondation mozilla et de ses principes qui considèrent que c'est le partage de connaissance qui est bénéfique pour le web, je n'ai pas trop compris la démarche. "Interdire" github à des développeurs.

En attendant mes nombreux side project avec un nom de domaine prit chez ovh sont hébergés gratuitement chez github #ettoc
Je vais vous expliquer dans cet article comment réaliser cette manipulation.


## Connectez vous à votre interface


![Le manager OVH](http://davidleuliette.com/wordPress/wp-content/uploads/2013/08/ovh.png)

Si vous avez choisi d'acheter votre nom de domaine sans hébergement vous pouver changer l'URL de destination pour la faire pointer vers les serveurs de github.

![Modifier votre DNS](http://davidleuliette.com/wordPress/wp-content/uploads/2013/08/DNS-github.png)

Pour un domaine comme exemple.fr vous devez utiliser un enregistrement de type A et le faire pointer sur `204.232.175.78`


## Créer un fichier CNAME


Si vous effectuez ces modifications vous devriez avoir une belle erreur 404.

Pour afficher votre nouveau site il suffit de suivre ces 2 étapes :

![La branche gh-pages est importante](http://davidleuliette.com/wordPress/wp-content/uploads/2013/08/gh-pages.png)

1. Créer une branche 'gh-pages' et commitez vos modifications sur cette branche.
2. Créer un fichier `CNAME` avec l'adresse de votre site (ici c'est pokemonbreakpoint)

Il ne vous reste plus qu'a attendre une dizaine de minutes de propagation et vous voici avec votre nouveau site gratuit en hébergement.
