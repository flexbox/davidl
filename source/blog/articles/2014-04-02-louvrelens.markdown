---
date: 2015-04-01
slug: louvrelens
title: Proposition de redesign du louvrelens.fr
page_title: Webdesign responsive pour un site de musée
changefreq: monthly
priority: 0.8
published: false
---

Chaque jour, dans la communauté des designer, les [proposition de redesign](http://dribbble.com/search?page=4&q=redesign) pleuvent : iOs, Facebook, Twitter … Si je salue la performance, je ne comprends pas trop l’intérêt car ces boites possèdent une armée de personnes en interne pour réaliser la chose. Pourquoi ne pas s’attaquer à de vrais sites qui ont vocation à être accessibles au plus grand nombre ?


(Responsive Museum)[http://responsivemuseum.tumblr.com/] propose de modifier la feuille de styles CSS du site d’un musée pour le rendre lisible sur mobile, tablette, etc… J’ai voulu participer à cette chouette initiative en proposant la refonte du [LouvreLens](http://www.louvrelens.fr/)

## Pourquoi un redesign ?

Pour préparer ma prochaine visite au musée, je me suis posé dans mon canapé avec ma tablette (mais apparement je dois être le seul français à faire ça).

Le site internet n’est pas responsive et l’expérience n’est donc pas optimisée pour la mobilité. Je décide de télécharger l’application android et la c’est le drame : _Cette application n’est pas compatible avec votre appareil_.



Le problème principal est d’avoir divisé le site en 3 parties : l’accès web, l’accès android et iPhone.
J’ai déjà évoqué le fait que ce choix [multiplie les couts](http://davidl.fr/blog/webdesign-adaptatif-vs-site-mobile-vs-application-native.html) et je ne pense pas que ce soit une bonne solution pour [le budget de fonctionnement](http://fr.wikipedia.org/wiki/Louvre-Lens#Fonctionnement) alloué aux mise à jour du contenu en ligne.


## Audit de navigation


Contenu de la page d’accueil actuelle :

1. Une liste de lien en haut de page
2. Un menu principal de navigation
3. Un carrousel d’actualités
4. Un menu récapitulant tous les liens du site
5. Une liste de lien en bas de page

### La navigation n’est pas assez stratégique

Il existe plus de 5 manières de naviguer sur le site avec différents problèmes :

- Doublons de page d’entrée
- Pas de cohérence de catégories
- Un [menu pour naviguer dans le menu](https://31.media.tumblr.com/20dfb470e44ec08f07f240c16902e703/tumblr_mze5idLVTu1toamj8o2_500.gif)


### Menu principal

A mon avis le site d’un musée se doit d’être accessible à tous, et d’ici 2015 ce ne sera [pas négociable](http://www.lexpress.fr/actualites/1/societe/handicap-l-echeance-de-2015-d-accessiblite-pour-tous-pas-negociable_1023008.html). J’aimerais bien que l’on m’explique en quoi la navigation actuelle du louvre lens est accessible ? - elle est simplement illisible :

- Petite taille de la police
- Chevauchement des caractères
- Mauvais contraste des couleurs






### Le but principal n'est pas atteint

Les 3 informations capitales qui devraient êtres mises en avant sont : Les horaires, Les tarifs et les évènements à venir. Les visiteurs doivent trouver ces informations très simplement afin de faciliter leur décision de venir visiter le musée.

Le Louvre-Lens est un lieu d'exception à explorer, mais la navigation actuelle n'encourage pas les utilisateurs à trouver facilement les informations qu'ils recherchent.




## Solutions


### Menu principal

En supprimant et en regroupant les informations il est possible de simplifier le menu principal.
Il est responsive est s'adapte en fonction de la taille de l'écran.

L'unique bouton est un tunnel d'entrée vers le contenu personnalisé des utilisateurs.

### Navigation par catégories

Pour garder captif l'attention des visiteurs, les entrées vers les différentes pages essentielles sont positionnées en bas de page, avant le footer.

- Horaires
- Billets
- Boutiques
- Agenda

Comme sur une carte où l'on affiche la position actuelle, le lien vers la page en cours est contrasté pour inviter à la découverte des autres catégories.

### Demonstration

Ma philosophie est le développement open source et grâce à la magie de Ruby on Rails et SASS tout est disponible sur github. N'hésitez pas à aller "pirater" mon code source :)

.button
Demo

.button.secondary
Code source
