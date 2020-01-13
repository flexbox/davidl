---
date: 2016-03-04
slug: svg-helper-ruby
title: "Helper pour les images SVG avec Ruby on Rails (ou Middleman)"
description: "2 méthodes pour faciliter l’implémentation des images SVG inline avec Ruby on Rails et Middleman"
image: https://c2.staticflickr.com/2/1551/25523028912_46c58df7f9_b.jpg
page_title: Images SVG inline avec Ruby on Rails & Middleman
page_emphasis: Automatiser l’intégration de vos images avec un helper
changefreq: monthly
priority: 0.5
---

J’utilise de plus en plus des images SVG sur mes projets web. Il y a 2 principaux avantages à utiliser ce type d’images :

- les Scalable Vector Graphics (en français [“graphique vectoriel adaptable”](https://fr.wikipedia.org/wiki/Scalable_Vector_Graphics)), sont par définition __compatible avec les écrans HD__.
- Ce sont des fichiers textes qui sont intégrés directement dans le HTML, vous __gagnez en performance__ puisqu’il n’y a pas de requête http supplémentaire.

Le principal problème est que cela “_pollue_” nos `partials`. Dans un contexte d’__application Ruby on Rails ou Middleman__, un simple appel avec une ligne `image_tag` se transforme en centaines de lignes avec des `glyph unicode` suivies de coordonnées.

Voici 2 solutions pour résoudre ce problème.

## Méthode 1 : Quick’n’dirty

Les SVG sont des fichiers textes basés sur du `.xml`, nous pouvons les inclures dans nos fichiers `.html`. Dans notre application Rails ou Middleman __le hack est d’inclure__ des `partials` ou vues qui contiennent notre image.

Pour faire ceci, commencez par [renommer tous votres fichiers SVG](/uses.html) en prefixant par un underscore et en ajoutant l’extention de votre langage de template.

_Exemple_ : `logo.svg` se transforme en `_logo.html.erb`

Ensuite nous devons le ranger au bon endroit.

- Avec Rails `app/views/svg/_logo.html.erb`
- Avec Middleman `source/svg/_logo.html.erb`

Ensuite, vous pouvez ajouter une image simplement avec un `partial`.

__Ruby on Rails__

~~~ruby
  <%= render :partial => 'svg/logo' %>
~~~

__Middleman__

~~~ruby
  <%= partial 'svg/logo' %>
~~~

Boom ! sh$t done !


## Méthode 2 : Rendu dynamique

La première solution fonctionne, mais ce n’est pas propre et comme je l’ai précisé : c’est un hack. Les images ne respectent plus l’architecture `app/assets/images` (Rails) ou `source/images` (Middleman). De plus nous devons renommer toutes les images. Ça ne change pas le comportement, mais ma santé mentale n’apprécie pas trop.

Il existe une __méthode plus intelligente__.

Au lieu d’utiliser un `partial`, il serait beaucoup plus judicieux d’[utiliser un helper](https://coderwall.com/p/uip7xg/ruby-on-rails-image-helper-for-retina-display-with-foundation-interchange).

__Ruby on Rails__

~~~ruby
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end
~~~

__Middleman__

~~~ruby
  def svg(name)
    root = Middleman::Application.root
    file_path = "#{root}/source/images/#{name}.svg"
    return File.read(file_path) if File.exists?(file_path)
    '(not found)'
  end
~~~

Le __helper__ cherche le chemin de l’image, dès qu’il le trouve il retourne le résultat au format texte. Pour éviter les erreurs on affiche `(not found)` au lieu de provoquer une erreur.

Pour afficher une image c’est aussi simple que cela :

~~~ruby
  <%= svg 'logo' %>
~~~

## Chargement plus rapide

Pour aller plus loin vous pouvez ajouter une stratégie de cache afin d’__améliorer la performance__, il est facile de mettre en place le [fragment caching de Rails](http://guides.rubyonrails.org/caching_with_rails.html).

__Rails__

~~~ruby
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    if File.exists?(file_path)
      cache { File.read(file_path).html_safe }
    else
      '(not found)'
    end
  end
~~~

Je ne suis pas sur du comportement mais je pense qu’après chaque deploy en production vous devrez faire un `Rails.cache.clear`.

## ⚠ Attention

Prenez garde, dans certains cas utiliser des SVG ralenti votre page comparé à des images `.png`. Je n’ai personellement pas de chiffres à proposer mais GitHub a publié quelques données suite à leur [abandon des font icon pour des images SVG](https://github.com/blog/2112-delivering-octicons-with-svg).

![Benchmark performance images SVG](https://cloud.githubusercontent.com/assets/54012/13176951/eedb1330-d6e3-11e5-8dfb-99932ff7ee25.png)
_Benchmark avant / après l’utilisation de SVG_

N’utilisez jamais des images SVG pour des images complexes. Dans cet exemple les dégradés, ombres portées, … alourdissent l’image.

![Choix pour une image svg](https://c2.staticflickr.com/2/1564/25190117159_c0af1228d7_b.jpg)
_Comparaison des types d’images_

__Ressources__

- Logos sous [Creative Commons](http://www.logodust.com/)
- Render [inline SVG](http://cobwwweb.com/render-inline-svg-rails-middleman#boost-performance-with-fragment-caching)
