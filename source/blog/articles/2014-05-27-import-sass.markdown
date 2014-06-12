---
date: 2014-05-27
slug: import-sass
title: Résoudre le problème @import des fichiers Sass
image: https://farm6.staticflickr.com/5095/5449679657_46fed579c2_z.jpg
page_title: Architecture des fichiers Sass
changefreq: monthly
priority: 0.8
---

Avec ses variables, fonctions et imports, Sass donne des supers pouvoirs au fichiers CSS. Plus précisément, il est possible d'importer et d'organiser ses fichiers SCSS de différentes manières. Mais tout ce pouvoir amène d'autres problèmes : la possibilité d'importer différents fichiers dans votre projet signifie que vous aller devoir gérer ses fichiers.

![Super pouvoirs et Sass](https://farm6.staticflickr.com/5095/5449679657_46fed579c2_z.jpg)

_Superman wallpaper par [Jason Csizmadi](https://www.flickr.com/photos/dangergraphics/)_

D'expérience cela peut provoquer de bonnes crises d'hystérie, mais avec l'habitude j'ai appris à contrecarrer ces différents problèmes et j'ai décidé de partager ces problèmes pour vous faire gagner du temps. __Voici toutes les réponses aux question que vous vous posez pour organiser vos fichiers en Sass__.

## Définition d'un `partial` en Sass

Un __partial__ est un fichier qui contient votre Sass. J'utilise des `partial`s pour organiser mes projets : les boutons dans un fichier, la typographie dans un autre... Cette architecture permet de rapidement trouver et faire des changements dans des projets complexes.

Les `partial`s ne sont pas de _réels_ fichiers Sass car `sass watch` ne les convertira pas en CSS. Ils doivent êtres importés dans un fichier `.scss`

![Sublime text search shortcut](https://lh4.googleusercontent.com/-s1uPAH3rKvw/U4SDcBFVBGI/AAAAAAAAAIc/2U5QGQt_8lM/w480-h300-no/search.gif)

_(Avec sublime text `cmd` + `t` permet de faire une recherche rapide)._

## Sass peut importer uniquement les fichiers commençant par underscrore ?

Dans certains cas, vos fichiers Sass seront ignorés si vous les importez sans les préfixer avec `_`. Ceci dit, Sass n'est pas de la magie noire et ne convertira pas `_button.scss` en `button.scss` pour votre site. Vous pouvez seulement importer des fichiers commençant par `_`.

Pour résumer, comprendre __comment architecturer vos fichiers Sass__ est aussi important que Sass lui-même. Voici la convention que je recommande :

1. Renommer votre fichier CSS principal (application.css en application.scss par exemple)
2. Ajouter votre code Sass dans ce fichier pour vous familiariser avec le langage
3. Organiser vos fichiers en `partial`s (comme _grid.scss) dès que votre fichier devient trop compliqué à maintenir / parcourir

## Peut-on écrire du CSS dans des `partial`s Sass ?

Absolument ! Cela ne dérange pas les fichiers Sass d'avoir du CSS à l'intérieur. La façon la plus rapide et la plus simple pour commencer à écrire du Sass est de prendre un fichier CSS existant, de changer son extension en `.scss`, et de commencer à écrire du code Sass. Par exemple vous pouvez commencer par renommer `theme.css` en `_theme.scss` et ajouter progressivement des variables et des fonctions au style existant.

Un bon point de départ est d'utiliser une convention de nommage pour les couleurs.

    $blue-steroid
    $blue-light
    $blue
    $blue-dark

> Donc on ne doit pas vraiment écrire de Sass dans application.scss —ce fichier est est seulement utilisé pour importer des partials ?
>
> <cite>Un noob du Sass</cite>

Techniquement vous pouvez écrire n'importe quoi dans `application.scss`, mais je recommande de séparer vos composants en `partial`s, et de les importer ensuite dans `application.scss` pour conserver une bonne organisation depuis le départ.

En réalité je commence à coder mes différents `partial`s en début de projet. Je n'ai jamais besoin d'écrire de code Sass dans `application.scss`, excepté les `@import`.

## Et si j'utilise un framework comme [Foundation](http://foundation.zurb.com/) ?

On peut se poser la question suivante : j'importe mes fichiers Sass avant ou après les `import` pour Foundation ?

Sass est très sensible à l'ordre des sélecteurs. Ceci dit, les déclaration les plus tardives dans vos fichiers `.scss` écrasent celles faites précédemment. C'est pour cette raison que vous devez toujours importer vos `partial`s __après__ Foundation pour personnaliser votre site. Par exemple :

    @import
      "foundation/components/block-grid",
      "foundation/components/buttons",
      "foundation/components/forms",
      "foundation/components/grid",
      "modules/my-typography",
      "modules/my-branding",
      "modules/my-buttons";

Dans ce cas `modules/my-buttons` écrasera les boutons de Foundation. __Importer vos fichiers après__ ceux du framework signifie : "Oh grand magicien Sass, modifie moi les fichiers importés avant pour personnaliser mon site".

## Est-ce que je peux dire à Sass d'importer tous les `partial`s contenus dans un dossier ?

Non, pour les raisons exposées précédemment.

Il n'y a __pas de moyen fiable de contrôler l'ordre__ dans lequel un dossier entier sera importé, vous devez donc importer chaque `partial` vous-même...

Et je vous voie venir à 100 km les apprentis hackers avec :

    @import "stylesheets/*"

Je vous souhaite bon courage dans la gestion de vos dépendances de variables, et dans l'optimisation de vos feuilles de style.

Comme vous l'avez vu dans la précédente question, vous pouvez importer une série de fichiers avec seulement une seule déclaration `@import` en séparant chaque fichier par une virgule. Remarquez aussi que Sass ne nécessite pas d'écrire `.scss` ou `_` dans les noms de fichiers. Ce préprocesseur est assez intelligent pour reconnaitre ce que vous voulez faire.

## Peut- on utiliser `@import` pour embarquer des fichier .css ?

__Mauvaise nouvelle__ : Sass ne peut importer que des fichiers `.scss` ou `.sass

__Bonne nouvelle__ : `.scss` est simplement du `.css` avec une orthographe différente. Comme mentionné dans la première question, vous pouvez transformer vos fichiers `.css` en `.scss` simplement en changeant l'extension de fichier.

## Si tous mes `partial`s sont dans un dossier, quelles sont les formules de magie noire pour compiler ces fichiers dans une seule feuille de style ?

La syntaxe `@import` utilisée en SCSS est complètement différente d'une ligne de commande. La _compilation_ s'éxécute avec une formule magique depuis un terminal, mais ces formules dépendent de votre environement d'éxécution.

Par exemple :

- Sass : `sass watch`
- Compass : `compass watch`
- Grunt : `grunt`
- Middleman : `middleman server`
