---
date: 2014-09-07
slug: template-ruby
title: Coder du HTML plus rapidement grâce au templating
description: "Le language de balisage HTML est à la base du web. Son principal problème est -selon moi, sa lenteur d'écriture.
"
page_title: 5 astuces pour utiliser slim avec ruby
page_emphasis: Écrire moins de code & résoudre plus de problèmes
changefreq: monthly
priority: 0.8
---

Cela fait maintenant plus d’un an que j’ai abandonné l’univers `php` pour me consacrer à la galaxie ruby. En travaillant avec une architecture MVC, j’ai utilisé différents moteurs de templating comme smarty.
Ruby possède aussi ses propres moteurs comme `erb`, `haml`, … Mais mon préféré -et de loin, reste [slim](http://slim-lang.com/).

Pourquoi ? La raison est simple : je suis 2 fois plus performant. Avec ce templating, il n’est plus nécessaire pour le balisage HTML d’utiliser `<`, `>` et `/`. Résultat : le HTML est codé 2 fois plus rapidement (Même si des plugins comme emmet.io peuvent vous faciliter la vie). Votre code est 2 fois moins long et il est beaucoup plus rapide de scanner un fichier.

Dans cet article je vais expliquer les astuces que j’ai apprises en lisant la documentation, pour vous éviter de parcourir inutilement stackoverflow pendant des heures afin de trouver la bonne pratique de codage.

## Les bases

La phylosophie de slim est de _supprimer tous les caractère inutiles_. Si l’on prends cet exemple [extrait de la documentation](http://slim-lang.com/) on peut remarquer plusieurs choses :

~~~ haml
  doctype html
  html
    head
      title Slim Examples
      meta name="keywords" content="template language"
      meta name="author" content=author
      javascript:
        alert('Slim supports embedded javascript!')
    body
      h1 Markup examples
      #content
        p This example shows you how a basic Slim file looks like.
        == yield
        - unless items.empty?
          table
            - for item in items do
              tr
                td.name = item.name
                td.price = item.price
        - else
          p
           | No items found.  Please add some inventory.
             Thank you!
      #footer
        Copyright © #{year} #{author}
~~~

- Pas de fermeture de balises
- `#content` donnera `<div id="content"></div>`
- `td.name` se transformera en `<td class="name"></td>`
- `= link_to 'Mon site', 'https://archive.davidl.fr'` pour utiliser du ruby qui sera compilé en `<a href="https://archive.davidl.fr">Mon site</a>`
- `- if i.am == amazing` permet de faire des tests ou des boucles

## Gestion des espaces

Si vous avez suivi mon [tunning de sublime Text](https://archive.davidl.fr/blog/) vous savez que je supprime les espaces inutiles en fin de ligne à chaque sauvegarde. Cet avantage peut se transformer en inconvénient et voici comment gérer les espaces avec slim et vous éviter d'utiliser `&nbsp;`

- `'` Ajoute un espace en fin de ligne.
- `|` Permet d'ajouter du texte sans espace.

Ce qui donne dans un cas concret :

~~~ haml
    p
      'Voici un paragraphe avec
       = link_to 'un lien vers un site', 'https://guidecss.davidl.fr/'

    p
      |Un autre paragraphe
      ', avec une virgule.
~~~

## Optimiser les moteurs de recherche avec les balises schema.org

Schema.org est un format de micro données qui permet aux moteurs de recherches et aux différents appareils de comprendre la structure des informations. Voici un exemple simple pour le balisage d'un fil d'arianne

~~~ haml
    ul class="breadcrumbs"
      li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"
        = link_to '/index.html', itemprop: 'url' do
          span itemprop="title"
            |Accueil
~~~


- `itemscope=""` sera interprété en `itemscope`, c'est l'un des seuls cas où vous devez ajouter des caractères par rapport au HTML.


## Les attributs personnalisés `data-*`

Tout comme les balise de microdonnées, pour ajouter des attribut personnalisés il faut simplement utiliser la notation suivante :

slim

~~~ haml
    nav data-dropdown="js-sub-menu" Menu
~~~

HTML

~~~ html
    <nav data-dropdown="js-sub-menu"> Menu </nav>
~~~

Cela se complique un peu si vous devez ajouter plusieurs attributs, mais la encore la notation est simplifiée si l’on connait la bonne syntaxe :

slim

~~~ haml
    div data: {a: 1, b: 2} Foo
~~~

HTML

~~~ html
    <div data-a="1" data-b="2">Foo</div>
~~~


## Écrire du markdown

Il est possible d’écrire directement du markdown en plein milieu de ses vues. C’est une technique que j’utilise souvent car ce format est pervasif et facilement convertissable.

~~~ markdown
    markdown:
      ## Écrire du markdown
~~~

### Coloration syntaxique

Il existe une multitude d’outils pour ajouter de la coloration syntaxique dans des pages web. Ma technique préférée conciste à utiliser du markdown et à préciser le langage souhaité :

avec redcarpet :

~~~ markdown
    markdown:
    ``` ruby
    def my_cool_method(message)
      puts message
    end
    ```
~~~

avec kramdown :

~~~ markdown
    markdown:
    ~~~ ruby
    def my_cool_method(message)
      puts message
    end
    ~~~
~~~

## Conclusion

Le principal inconvénient d’utiliser ce moteur de templating est le coût de formation nécessaire à son apprentissage.

__C’est tout__.

La lecture des erreurs est simplifiée car si votre indentation n’est pas parfaite la page ne sera pas compilée. Fini le `</div>` fantôme qui casse toute votre mise page.

Slim est actuellement 10 fois plus rapide que haml.

En supprimant les balises inutiles votre code est plus concis et se lit plus rapidement.

Il est toujours possible d’utiliser du code HTML pour vous familiariser avec la syntaxe, que vous abandonerez très vite pour n'utiliser plus que du slim.

- - -

EDIT :

Si vous n'utilisez pas ruby il existe des plugins en JavaScript pour vous aider à trouver la lumière :

- [gulp-slim](https://github.com/cognitom/gulp-slim)
- [grunt-slim](https://github.com/matsumos/grunt-slim)
