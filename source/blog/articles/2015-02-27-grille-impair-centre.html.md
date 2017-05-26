---
date: 2015-02-27
slug: grille-impair-centre
title: Centrer des éléments impairs avec une grille CSS
description: "Comment organiser sa mise en page avec une grille CSS contenant un nombre d'élément impair ? En utilisant les classes pull et push avec le framework Foundation"
page_title: Une mise en page centrée avec des nombres impairs
page_emphasis: Symétrie et nombres impairs
changefreq: monthly
priority: 0.8
---

Pour créer des mises en page je travaille quotidienement avec les mathématiques en respectant une certaine symétrie. Lorsqu’elle est bien faite, elle contribue à avoir des conceptions armonieuses.

Je vais prendre par exemple une page de présentation d’équipe. Si vous avez 8 personnes dans une grille de 3 colonnes, vous allez rencontrer un problème. Heureusement, il y a un moyen de contourner cela. Voici comment faire pour centrer un nombre impair d’éléments dans votre mise en page avec la grille CSS du [framework Foundation](http://foundation.zurb.com/docs/).

![Centrer des éléments impairs avec une grille CSS](https://farm9.staticflickr.com/8613/16474630238_d41100070b_b.jpg)

## Centrer la grille de base

L’organisation de la mise en page est de 3 photos. Nous pourrions utiliser une grille personnalisé de 3 colonnes. Mais pour des raisons qui deviendront plus claires par la suite, nous allons utiliser une grille standard de 12 colonnes.

La première étape est de créer une mise en page de colonne `small-6`, centrée, pour que cela soit agréable et compact.

~~~ html
  <div class="row">
    <div class="small-6 small-centered columns">…</div>
  </div>
~~~

## Ajouter la grille

Ensuite, nous ajoutons 2 lignes contenant chacune 3 images.

~~~ html
  <div class="row">
    <div class="small-6 small-centered columns">
      <div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
      </div>
      <div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
      </div>
    </div>
  </div>
~~~

## Ajouter la dernière ligne

La ligne finale – à laquelle il “manque” une image – est pousée au milieu à l’aide des classes `push` et `pull`.

~~~ html
  <div class="row">
    <div class="small-6 small-centered columns">
      <div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
      </div>
      <div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
        <div class="small-4 columns">…</div>
      </div>
      <div>
        <div class="small-4 push-2 columns">…</div>
        <div class="small-4 pull-2 columns">…</div>
      </div>
    </div>
  </div>
~~~

Nous avons besoin d’une grille de 12 colonne pour utiliser les 2 classes `push` et `pull` : la mise en page semble avoir 3 colonnes, mais elle est pousée par les 2 derniers blocs. Le résultat est une mise en page symétrique avec une bonne chorégraphie du contenu.

Maintenant ce qu’il reste à faire est de choisir quel sera le bon ordre des photos.

[Voir la demo](http://flexbox.github.io/foundation-boilerplate/grid-uneven.html)
