---
date: 2014-04-01
slug: louvrelens
title: Proposition de redesign du louvrelens.fr
page_title: Webdesign responsive pour un site de musée
changefreq: monthly
priority: 0.8
---

Chaque jour, dans la communauté des designer, les [proposition de redesign](http://dribbble.com/search?page=4&q=redesign) pleuvent : iOs, Facebook, Twitter … Je salue bien évidemment cette performance. Mais pourquoi ne pas s’intéresser à de vrais sites qui ont vocation à être accessibles au plus grand nombre ?

[Responsive Museum](http://responsivemuseum.tumblr.com/) propose de modifier la feuille de styles CSS du site d’un musée pour le rendre lisible sur mobile, tablette, etc… J’ai voulu participer à cette chouette initiative en proposant la refonte du [LouvreLens](http://www.louvrelens.fr/)

## Pourquoi un redesign ?

Pour préparer ma prochaine visite au musée, je me suis installé dans mon canapé avec ma tablette. Je découvre que le site internet n’est pas responsive. L’expérience n’est donc pas optimisée pour la mobilité. Je décide de télécharger l’application Android. et là c’est le drame : _Cette application n’est pas compatible avec votre appareil_.

![louvrelen et android](https://farm8.staticflickr.com/7117/13621111873_2b530fb811_o.png)

Le problème principal est d’avoir divisé le site en 3 parties : l’accès web, l’accès Android et iPhone.
J’ai déjà évoqué le fait que ce choix [multiplie les coûts](http://davidl.fr/blog/webdesign-adaptatif-vs-site-mobile-vs-application-native.html) et je ne pense pas que ce soit une bonne solution pour [le budget de fonctionnement](http://fr.wikipedia.org/wiki/Louvre-Lens#Fonctionnement) alloué aux mises à jour du contenu en ligne.


## Audit de navigation

![homepage](https://farm8.staticflickr.com/7081/13621447714_a6668d31c3_b.jpg)

Contenu de la page d’accueil actuelle :

1. Une liste de lien en haut de page.
2. Un menu principal de navigation.
3. Un carrousel d’actualités.
4. Un menu récapitulant tous les liens du site.
5. Une liste de lien en bas de page.

### La navigation n’est pas assez stratégique

Il existe plus de 5 manières de naviguer sur le site avec différents problèmes :

- Doublons de page d’entrée.
- Pas de cohérence de catégories.
- Un [menu pour naviguer dans le menu](https://31.media.tumblr.com/20dfb470e44ec08f07f240c16902e703/tumblr_mze5idLVTu1toamj8o2_500.gif).


### Menu principal

À mon avis, le site d’un musée doit d’être accessible à tous, et apparemment d’ici 2015 ce ne sera [pas négociable](http://www.lexpress.fr/actualites/1/societe/handicap-l-echeance-de-2015-d-accessiblite-pour-tous-pas-negociable_1023008.html).

La navigation actuelle du Louvre-Lens ne me parait pas très lisible :

- Petite taille de la police.
- Chevauchement des caractères.
- Mauvais contraste des couleurs.

![contraste menu](https://farm8.staticflickr.com/7036/13621447294_b2a31ae1be_o.png)

### Le but principal n'est pas atteint

Les 3 informations capitales qui devraient êtres mises en avant sont : Les __horaires__, Les __tarifs__ et les __évènements à venir__. Les visiteurs doivent trouver ces informations très simplement afin de faciliter leur décision de venir visiter le musée.

Le Louvre-Lens est un lieu d'exception à explorer, mais la navigation actuelle ne permet pas aux utilisateurs de trouver facilement les informations qu'ils recherchent.


## Solutions


### Menu principal

En supprimant et en regroupant les informations il est possible de simplifier le menu principal.
Il est responsive est s'adapte en fonction de la taille de l'écran.

L'unique bouton est un tunnel d'entrée vers le contenu personnalisé des utilisateurs.

![menu responsive anime](https://farm4.staticflickr.com/3803/13621448534_763dd528ea_o.gif)

### Navigation par catégories

Pour garder captif l'attention des visiteurs, les entrées vers les différentes pages essentielles sont positionnées en bas de page, avant le footer.

- Horaires
- Billets
- Boutiques
- Agenda

![Navigation par catégories](https://farm4.staticflickr.com/3713/13621090445_7ce1677993_o.png)


Comme sur une carte où l'on affiche la position actuelle, le lien vers __la page en cours__ est contrasté pour inviter à la découverte des autres catégories.

### Demonstration

Ma philosophie est le développement open source et grâce à la magie de Ruby on Rails et SASS tout est disponible sur github.

<div class="row">
  <div class="medium-6 columns"><a href="http://flexbox.github.io/louvrelens/" class="button secondary expand">Demo</a></div>
  <div class="medium-6 columns"><a href="https://github.com/flexbox/louvrelens" class="button expand">Code source</a></div>
</div>

N'hésitez pas à aller "pirater" mon code source :)
