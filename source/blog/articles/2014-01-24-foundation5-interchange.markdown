---
date: 2014-01-24
slug: foundation5-interchange
title: Foundation 5, interchange et Google maps
page_title: Utiliser interchange pour charger dynamiquement le bon HTML pour le bon navigateur
changefreq: monthly
priority: 0.8
---
Dans le framework foundation [les classes de visibilité](http://foundation.zurb.com/docs/components/visibility.html) permettent d'afficher ou de masquer des éléments qui sont pertinent en fonction des appareils.
Par exemple, j’affiche une petite image sur un téléphone et une version plus grande pour les ordinateurs.
Dans un autre cas je souhaite masquer le menu de navigation au profit de petites icônes.
Les classes de visibilité permettent de masquer les éléments inappropriés pour chaque `viewport`.

Le problème c’est que les utilisateurs doivent télécharger les 2 versions. C’est une perte de temps, de mémoire navigateur et de bande passante.
Interchange permet de régler ce problème et c’est la façon la plus simple de sélectionner du contenu basé sur vos `mediaquery`
Avec interchange chaque navigateur télécharge ce qu’il ont besoin non pas ce qu’iil est possible de télécharger.
Dans cet article je vais expliquer comment mettre en place cette solution pour utiliser interchange avec votre contenu HTML.

Pour voir un exemple, je vous invite à visiter le site de cet [chambre d’hôte](http://chambredesanges.be/) à Bruxelles. Le contenu de ce site est [disponible sur github](https://github.com/css-ninja/chamber).

## Conventions et mises en garde

J’utilise le langage de [template slim](http://slim-lang.com/) pour réduire ma syntaxe HTML (`#` pour `<div id="...">` et `.` pour `<div class="...">`)

Interchange est assez souple, mais pour des raisons pratiques j’ai placé le contenu chargé par interchange dans le [dossier source](https://github.com/css-ninja/chamber/tree/master/source) qui sera à la racine de mon site web. Pour une grosse application il est impératif d’architecturer correctement vos vues.

## Contenu interactif

Dans cet exemple, j’utilise interchange pour :

- Afficher une image statique par défaut
- Afficher une google map interactive pour les écrans larges

Je sépare ces vues dans 2 fichiers `maps-small.html.slim` et `maps-medium.html.slim`

Avec interchange je charge ce contenu dans ma vue `_map.html.slim`

[maps-small.html.slim](https://github.com/css-ninja/chamber/blob/master/source/maps-small.html.slim) : Charge le contenu par défaut

[maps-medium.html.slim](https://github.com/css-ninja/chamber/blob/master/source/maps-medium.html.slim) : Chargez ce contenu sur grand écran (dans cet exemple avec une largeur supérieure à 600px)
Commençons en activant interchange sur notre page. Nous allons ajouter un texte par défaut "Chargement de la carte …" :

    div data-interchange=""
      Chargement de la carte...

Ensuite, nous allons modifier `data-interchange` pour lui dire quel est le contenu à charger en fonction de la `mediaquery`

    div data-interchange="[maps-small.html, (default)], [maps-medium.html, (large)]
      Chargement de la carte...

Et voilà, la magie opère ! Regardez [cet exemple pour voir la carte](http://chambredesanges.be/).

## Visibilité

Il y a des cas où vous souhaitez uniquement afficher certains contenus en fonction des tailles d'écran. Imaginez une galerie de photos. Avec [les classes de visibilité](http://foundation.zurb.com/docs/components/visibility.html), vous pouvez masquer le contenu, mais il sera téléchargé en arrière-plan. Niveau performance c'est zéro !

Avec interchange, il est possible de montrer / charger du contenu seulement sur les appareils appropriés. Pour afficher notre site plus rapidement sur les petits écrans, il est possible de ne rien télécharger.

Dans ce cas notre vue `image_gallery.html.slim` est un carousel avec beaucoups d'images.

So in this case we have a partials/image_gallery.html file that loads in a bunch of images. Pour n'afficher que ce contenu sur de grands écrans il suffit d'utiliser la balise suivante :

    div data-interchange="[image_gallery.html, (large)]"

NOTE : Si vous redimensionnez la fenêtre après que le contenu soit chargé, il ne sera pas automatiquement supprimé. Cela se produit s'il n'y a pas de requête de média correspondant.
