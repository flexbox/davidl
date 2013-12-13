---
date: 2013-12-13 17:03:05+00:00
slug: Foundation-breakpoint
title: Changer ses breakpoints avec Foundation
page_title: Personnaliser la grille de Foundation
---

Depuis la version 4.3, Foundation est configuré avec deux breakpoint principaux, - ces largeurs définissent le nombre de pixel utilisés pour faire basculer la grille.

Cette configuration par défaut permet de faire face à la plupart des scénarios. Mais cela n'est pas acceptable dans certains cas. Parfois, un projet nécessite différents plus de `breakpoints`. Voilà comment vous pouvez adapter Foundation en fonction des besoins de votre application web.

## 1. Changer les variables SASS

La meilleure façon de personnaliser la largeur des grilles est de modifier leurs paramètres dans les ficiers SCSS.

Dans `_settings.css`, recherchez :

    $small-range: (0em, 40em);
    $medium-range: (40.063em, 64em);
    $large-range: (64.063em, 90em);
    $xlarge-range: (90.063em, 120em);
    $xxlarge-range: (120.063em);

## 2. Rechercher et remplacer en CSS

Vous trouverez beaucoup de lignes avec des `breakpoints`. Par exemple :

    @media only screen and (min-width: 40.063em)
    @media only screen and (min-width: 64.063em)
    @media only screen and (min-width: 90.063em)
    @media only screen and (min-width: 120.063em)

Chaque `media query` représente le point d'arrêt qui sera utilisé par les navigateurs pour appliquer les différentes tailles : petit, moyen, grand et très grand.

## 3. Quelle taille choisir ?

Si vous choisissez une stratégie de prioritée du contenu, utilisez des mesures en `em` ou `rems`.

    $row-width: rem-calc(1000);
    $column-gutter: rem-calc(30);
    $total-columns: 12;

Aujourd'hui, Fondation 5 utilise les `rems` -relative em- pour ses mesures. Si vous préférez utiliser des pixels, la fonction `rem-calc()` transforme les pixels en rems pour vous.

Par exemple, avec une police de texte de taille 16px, `rem-calc(600)` donne la conversion `37,5rems`.

Si vous décidez d'adapter le contenu aux tailles d'écrans, voici des ressources pour vous aider à choisir :

- [mydevice.io](http://mydevice.io/devices/)
- [Mobile phone screen resolution market share](http://stats.areppim.com/stats/stats_mobiresxtime.htm)
- [StatCounter mobile screen resolutions](http://gs.statcounter.com/#mobile_resolution-ww-monthly-201307-201312)

## 4. Personnaliser le téléchargement

Encore une chose : Saviez vous que vous n'êtes pas obligé d'avoir une grille de 12 colonnes ?

Vous pouvez modifier cette propriété, ainsi que la taille des goutières avec le [formulaire de customisation](http://Foundation.zurb.com/develop/download.html#customizeFoundation).
