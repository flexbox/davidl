---
date: 2015-07-01
slug: typography-sass
title: Sass & typographie, une solution élégante
description: Quelques principes de bases et bonnes pratiques pour avoir un rythme typographique simple avec le preprocesseur Sass
image: https://farm4.staticflickr.com/3955/19413555681_fd5d0f5e7c_b.jpg
page_title: Organiser son rythme typographique avec Sass
page_emphasis: Guide pour une bonne expérience de lecture
changefreq: monthly
priority: 0.8
---

Quand il s’agit de faire du design, j’ai toujours accordé une _attention particulière à la typographie_. En tant que développeur front-end, c’est l’une des premières choses que je met en place pour mes nouveaux projets. J’ai déjà donné des [conseils pour avoir une bonne expérience de lecture](/typography.html), et je commence généralement par styler les paragraphes.

La question que l’on peut se poser poser est la suivante : Comment organiser sa typographie sur l’intégralité des feuilles de styles CSS ?

J’ai déjà rencontré ce problème — un bon nombre de fois — et voici mes solutions.

![Logo sass et typographie](https://farm4.staticflickr.com/3955/19413555681_fd5d0f5e7c_b.jpg)

## Principes de base avec Sass

Comme les meilleurs joueurs de golf : __codez le moins de lignes possible__.
J’ai vu un bon nombre de projet où les développeurs ont écris & re-écris du code sans en avoir besoin, cela ajoute plus de maintenance et détruit notre santé mentale.

__Coder pour le système__. La logique d’un designer est de créer des éléments graphiques et d’utiliser des variations. Vous devez chercher le plus petit dénominateur commun entre les éléments de votre interface, et les enrichir au besoin.

Rendez vous la vie plus facile. Utilisez [un preprocesseur](http://sass-lang.com/) (le reste de cet article présente des solutions avec Sass) et utilisez intelligemment ses fonctionnalités.

## Organiser son projet

Choisissez le design de votre __chorégraphie du contenu__. Je commence souvent par des bases saines, styler le paragraphe. C'est à cette étape que je vais mettre en place l’impac visuel de manière générale.

Configurez votre tableau de polices. Dans la plupart des systèmes, il existe 3 familles. (En avoir plus devient un problème de performance). Généralement un type `serif`, `sans-serif` ou encore `monospace`.
Avec ces informations, je peux créer des variables Sass dès le début de mon projet :

~~~ scss
  $font-family-sans-serif: 'Lato', Helvetica, Roboto, Arial, sans-serif;
  $font-family-serif:      'Merriweather', Georgia, 'Times New Roman', serif;
  $font-family-monospace:  'Ubuntu Mono', 'Monaco', monospace;
~~~

Commencez par l’élément `body`. C’est une chose qui améliore notre santé mentale et c’est __l’élément le plus important__ de cet article.

Si vous appliquez le design typographique de votre paragraphe `<p>` à votre élément `<body>`, cela vous évitera beaucoup de travail.

Vous avez identifié à l’étape 1 le plus petit dénominateur commun, vous pouvez donc appliquer tout le style sur l’élément `<body>`.

Cette solution a 3 avantages :

- Cela vous évite des déclations de `font-family`, `font-weight`, `color` …
- Une meilleure cohérence, peu de déclarations facilite la maintenance.
- Vous gagnez du temps, les styles s’appliquent sur toute votre interface.

Voici un exemple avec `body`:

~~~ scss

   // 1. Prevent iOS and IE text size adjust after device orientation change,
   //    without disabling user zoom.

  body {
    -ms-text-size-adjust: 100%; /* 1 */
    -webkit-text-size-adjust: 100%; /* 1 */
    background: $body-bg;
    color: $text-color;
    font-family: $font-family-sans-serif;
    font-weight: $font-weight-bold;
  }
~~~

Vous pouvez faire des déclaration de `font-family`, `font-weight`, `color`, ou encore `line-height`. C’est tout, il est dangereux de surcharger l'élément `<body>`.

Avec ce style en place, vous pouvez commencer à styler vos éléments en utilisant le moins de code possible. En utilisant ce système, il est bien plus facile de gérer sa typographie.

~~~ scss
  h1 {
    font-family: $font-family-serif;
  }
~~~

Puisque vous avez déjà vos différentes police de caractères déclarées dans des variables, vous pouvez changer d’avis beaucoup plus rapidement.

## Entre design & seo

Le développeur front-end est la colonne vertébrale d’un projet web. Il arrive fréquement que graphistes et consultants seo lui demandent des modifications contradictoires.

Certaines choses doivent avoir un impact visuel et d’autres doivent être optimisées pour le référencement d’un site web.
![Typographie Sass et optimisation seo](https://farm1.staticflickr.com/311/19223661110_4468d2c31d_b.jpg)

_The star wars naming sur [foundation-boilerplate](http://flexbox.github.io/foundation-boilerplate/type.html)_

La solution est d’avoir un système qui peut être appliqué en dehors des balises titres `h1`, `h2`, `h3`…

~~~ scss
  // @extend directive is a dark side power of the force, use it carefully
  .emperor {
    @extend h1;
    text-transform: uppercase;
  }
  .vador {
    @extend h2;
    font-weight: $font-weight-bold;
  }
  .maul {
    @extend h3;
    font-style: italic;
  }
~~~

Cette solution élagante — qui fonctionne — est proposée par le [Designer Andrew Clarke](http://stuffandnonsense.co.uk/blog/about/star-wars-styling).

J’espère que ce guide récapitulant les étapes de base vous aidera dans votre prochain projet. Si vous avez d’autres façons d’orchestrer votre typogaphie, _contactez moi sur twitter_.
