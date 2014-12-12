---
date: 2014-01-17
slug: favicon-middleman
title: Générer automatiquement ses favicon
description: Automatiser la création de toutes les tailles d'icones pour votre site / application web
page_title: Générer vos favicon avec middleman et ruby
changefreq: monthly
priority: 0.8
---

J’ai récemment contribué au projet [favicon_maker](https://github.com/follmann/favicon_maker) car cette gem ne répondait pas tout à fait à mon besoin : _supporter tous les appareils_ du marché en terme d'icônes.

Voici un guide pour exploiter pleinement la création de favicon de façon automatisée.

## État actuel des favicon

Pour supporter correctement les appareils mobiles android, iOs, windows 8 et sans oublier les navigateurs classiques vous devez créer plus de 17 formats d'images.

Il est possible de créer un script Photoshop pour automatiser le processus, mais il reste 2 problèmes :

- Compliqué niveau maintenance
- L'export au format `.ico` : n'est pas natif dans ce logiciel.

Heureusement [favicon-maker pour middleman](https://github.com/follmann/middleman-favicon-maker) peut nous simplifier cette tâche de création d'images.

## Configuration

La première chose à faire est d'inclure la gem dans votre `Gemfile`

~~~ ruby
  gem 'middleman-favicon-maker'
~~~

Dans votre dossier `/source/` ajoutez vote image `favicon_base.png (Vous pouvez spécifier un autre chemin dans votre fichier de config)

Pour activer la création des différents formats tout se passe dans `config.rb`

~~~ ruby
configure :build do

  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      "favicon_base.png" => [
        { icon: "apple-touch-icon-152x152-precomposed.png" },
        { icon: "apple-touch-icon-144x144-precomposed.png" },
        { icon: "apple-touch-icon-120x120-precomposed.png" },
        { icon: "apple-touch-icon-114x114-precomposed.png" },
        { icon: "apple-touch-icon-76x76-precomposed.png" },
        { icon: "apple-touch-icon-72x72-precomposed.png" },
        { icon: "apple-touch-icon-60x60-precomposed.png" },
        { icon: "apple-touch-icon-57x57-precomposed.png" },
        { icon: "apple-touch-icon-precomposed.png", size: "57x57" },
        { icon: "apple-touch-icon.png", size: "57x57" },
        { icon: "favicon-196x196.png" },
        { icon: "favicon-160x160.png" },
        { icon: "favicon-96x96.png" },
        { icon: "favicon-32x32.png" },
        { icon: "favicon-16x16.png" },
        { icon: "favicon.png", size: "16x16" },
        { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
        { icon: "mstile-144x144", format: "png" },
      ]
    }
  end

end
~~~

## Intégration

Il ne reste plus qu'à appeler correctement nos images dans le `<head>` de notre document :

~~~ html
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">

  <link rel="icon" type="image/png" href="/favicon-196x196.png" sizes="196x196">
  <link rel="icon" type="image/png" href="/favicon-160x160.png" sizes="160x160">
  <link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">

  <meta name="msapplication-TileColor" content="#f5f5f5">
  <meta name="msapplication-TileImage" content="/mstile-144x144.png">
~~~
