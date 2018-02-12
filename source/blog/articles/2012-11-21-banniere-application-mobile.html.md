---
date: 2012-11-21
slug: banniere-application-mobile
title: Afficher l’installation de votre application sur mobile
page_title: Téléchargement d’application iOS
changefreq: monthly
priority: 0.8
---

[Update]

Cette solutiion est déclarée #bullshit :

L’écran “Télécharger notre app” de Google+ a [provoqué 69% d’abandon sur leur site mobile](http://googlewebmastercentral.blogspot.co.uk/2015/07/google-case-study-on-app-download-interstitials.html).

- - -

Hier (je précise que nous sommes en 2012) j’ai cherché une information sur le site service-public avec mon iPhone.
...
Ne rigolez pas tous en même temps ...
Je ne parlerais pas ici de la façon de proposer un contenu accessible, mais plutôt de la manière de proposer une application au téléchargement.

## Une mauvaise expérience mobile

Suite à une recherche j’accède au site.

![Cliquez ici pour voir la version mobile ?](blog/legacy/2012/11/service-public-mobile.png?raw=true)

En effet le site n’est pas du tout optimisé pour une expérience mobile.

Comme j’ai vraiment besoin de l’information je vais charger (une deuxième fois) le site pour la version mobile.

![Un site optimisé mobile ... #oupas](blog/legacy/2012/11/service-public-mobile-site.png?raw=true)


... Comment dire ? Euh ... No comment le site mobile est encore moins optimisé.


La solution est de charger la version lecteur qui permet (enfin !) d’accéder au contenu.

![Enfin une version lisible](blog/legacy/2012/11/service-public-mobile-lecteur.png?raw=true)



__Conclusion__ : 3 étapes pour consulter le contenu d’une recherche mobile, c’est un peu la croix et la bannière.

Un autre exemple.

J’ai faim, je regarde mes produits dans le frigo.

Comme je suis un grand cuisinier je cherche une recette sur le web ...

![Un splash screen inutile](blog/legacy/2012/11/750g-mobile.png?raw=true)

750g.com n’a pas compris mon besoin : J’ai faim et je veux une recette de cuisine, pas télécharger une application !

## La solution

Sur le site de twitter la solution est bien adaptée : garder l’accès au contenu et proposer le téléchargement de l’application de façon intelligente.


![Une jolie bannière qui respecte l’interface utilisateur](blog/legacy/2012/11/smartappbanner.png?raw=true)


[http://smartappbanners.com/](http://smartappbanners.com/) propose une méthode unifiée pour proposer le téléchargement d’application iOS.




Cette solution affiche l’icône de l’application, son prix et si l’application est déjà installée sur l’appareil on propose de l’ouvrir directement.




### Comment ça fonctionne ?

Cette solution est déconcertante de facilité.

~~~ html
    <meta name="apple-itunes-app" content="app-id=myAppStoreID"/>
~~~

Ajouter simplement une balise meta dans le `<head>` de votre site

Pour les options complémentaires rendez vous directement sur le site smartappbanners.
