---
date: 2014-07-30
slug: grille-semantique
title: Construire une grille CSS sémantique avec le framework Foundation
page_title: HTML sémantique avec Sass
changefreq: monthly
priority: 0.8
---

Dans cet article je présente les meilleures techniques pour éviter une maladie bien connue lors de la construction de site web avec Foundation : la divitis.

## Un peu d’histoire

C’est [Jeffrey Zeldman](http://www.zeldman.com/) qui a trouvé le nom de [2 maladies](http://davidl.fr/blog/css-evolutif.html) il y a plus de 10 ans : _divitis_ et _classitis_.

### Divitis

À l’époque, avec l’arrivée des feuilles de styles, il n’était plus nécessaire d’utiliser un nombre incalculable de balises (comme `<font>` ou `<center>`) pour mettre en forme un élément. La __divitis__ est une façon de coder qui utilise beaucoups d'éléments `<div>`, qui ne sont pas toujours obligatoires. Pour se remmetre dans le contexte de l'époque :

> C'est bon Gégé il n'y a plus de tableaux dans notre page HTML j'ai tout remplacé par des div.
>
> <cite>Le dieu de l'internet</cite>

Utiliser rechercher et remplacer n'est pas solution au problème : il y a trop de balises HTML dans la page.

### Classitis

Cette révolution a amené un nouveau problème la __classitis__ ou l’art de surcharger son HTML avec plus de `class` que nécessaire.

    <ul>
      <li class="list-item"> ... </li>
      <li class="list-item"> ... </li>
      <li class="list-item"> ... </li>
    </ul>

<div class="alert-box alert">
<i class="fa fa-thumbs-o-down"></i> Mauvaise solution
</div>

    <ul class="inline-list">
      <li> ... </li>
      <li> ... </li>
      <li> ... </li>
    </ul>

<div class="alert-box success">
<i class="fa fa-thumbs-o-up"></i> Bonne solution
</div>

## État des lieux

_Classitis_ et son cousin, _Divitis_, sont des gros mots que nous utilisons pour maudire le code surchargé. Au siècle dernier, nous avons utilisé les tableaux HTML pour la mise en page. Chaque tableau avait au moins trois niveaux: `<table>`, `<tr>` et `<td>`. La promesse de `<div>` lié à un peu de CSS était de supprimmer les balises inutiles.

De nos jours, avec le responsive, les mises en pages sont de plus en plus complexes, nous nous sommes retrouvés avec énorméments d'éléments `<div>`, une sorte de retour en arrière qui glisse doucement vers la mise en page avec des tableaux.

Je vais prendre un exemple avec la grille de Foundation. Notez que chaque `<div>` n'a pas forcément de but, mais elles sont obligatoires pour contruire une mise en page complexe. Un balisage typique Foundation est plein à craquer d'informations qui décrit sa grille :

    <div class="row" id="m-header">
      <div class="small-12 columns">
        ...
      </div>
    </div>

    <div class="row" id="m-nav">
      <div class="small-12 columns">
        ...
      </div>
    </div>

    <div class="row" id="m-content">
      <div class="small-6 medium-4 columns">
        <h1> ... </h1>
        <p> ... </p>
        <p> ... </p>
        <p> ... </p>
      </div>
      <div class="small-6 medium-8 columns">
        ...
      </div>
    </div>

    <div class="row" id="m-footer">
      <div class="small-12 columns">
        ...
      </div>
    </div>

Fonctionnel ? Oui... [Sémantique](http://fr.wikipedia.org/wiki/HTML_s%C3%A9mantique) ? Pas vraiment... Sauf pour quelques attributs `id`. Dans ce cas, chaque section est générique, et les attributs rendent le code difficile à lire. Les `div`s sont des boites génériques utilisées pour organiser d'autres éléments. Quand je dis générique, j'entends pas là dénué de sens, pas intelligent et sans saveur.

## Et maintenant un peu de sémantique

Voici le même HTML avec un marquage sémantique, avec de nouveaux éléments HTML5 :

    <header>
      <div role="banner" class="m-header--logo"> ... </div>
      <nav> ... </nav>
    </header>
    <main>
      <article>
        <h1> ... </h1>
        <p> ... </p>
        <p> ... </p>
        <p> ... </p>
      </article>
      <aside> ... </aside>
    </main>
    <footer> ... </footer>

C'est plus facile à lire, pour les humains et aussi pour les machines. Parfois, il n'existe pas d'élément HTML approprié pour le type d'informations que nous voulons - dans ce cas, un logo. Mais si possible, j'utilise des éléments qui décrivent leur contenu uniques :

   * `header` : Une introduction ou une aide à la navigation.
   * `nav` : une collection de liens.
   * `main` : Contenu principal de la page.
   * `article` : morceau de contenu d'un document, d'une page, d'une application, qui est prévu pour être réutilisé de façon indépendante (Message sur un forum, article de blog ...).
   * `aside` : Contenu d'une page indirectement lié à ce qui l'entoure et qui pourrait être séparé de celui-ci. (Glossaire, publicités, biographie de l'auteur, liens vers des articles similaires).
   * `footer` : Conclusion de la section.

Notez que je n'utilise plus de `class` pour avoir un bon exemple, même si [dans la pratique c'est plus évolutif](guidecss.fr/convention.html) d'en avoir.

## Faire fonctionner le tout avec Sass

Transformer la grille de Foundation en code sémantique est possible en utilisant 2 fonctions :

   * `grid-row()` : donne à un élément le comportement des `row` de Foundation.
   * `grid-column()` : ajoute une colonne, exemple avec `small-12 columns`.

1. Comme expliqué [dans la documentation](http://foundation.zurb.com/docs/using-sass.html) vous devez importer les fichiers de foundation et le fichier `_settings.scss`.

        @import "settings";
        @import "foundation";

2. Ensuite je choisi un sélecteur comme `<header>`.

        header { }

3. J'ajoute `grid-row` à ce sélecteur pour lui donner le comportement d'une `row` de Foundation.

        header { @include grid-row; }

4. Finallement je donne à un sélecteur à l'intérieur du header les propriétés d'une colonne.

        header {
          @include grid-row;
          .m-header--logo {
            @include grid-column($columns:12, $center:true);
          }
        }

Voici un exemple complet d'un code sémantique en SCSS :

    header {
      @include grid-row;
      .logo {
        @include grid-column($columns:12, $center:true);
      }
    }
    main {
      @include grid-row;
      aside {
        @include grid-column(8);
      }
      article {
        @include grid-column(4);
      }
    }

Respecter la sémantique rend votre code HTML plus léger et plus compréhensible. Sass est un excellent outil pour la construction d'une grille responsive, et les mixins Sass de Foundation facilitent l'intégration. Le résultat est un code plus facile à lire et à maintenir, qui décrit avec plus de précision ce que vous souhaitez communiquer.

## Construire rapidement un prototype

Suivre ces différentes étapes est un très bon exemple pour avoir un balisage HTML sémantique. Si vous souhaitez rapidement mettre ce système en place je vous invite à cloner un de mes [projet open source Foundation boilerplate](https://github.com/flexbox/foundation-boilerplate).
