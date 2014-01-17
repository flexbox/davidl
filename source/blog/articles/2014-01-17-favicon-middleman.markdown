---
date: 2014-01-17
slug: favicon-middleman
title: Générer automatiquement ses favicon
page_title: Générer vos favicon avec middleman et ruby
changefreq: monthly
priority: 0.8
---

J’ai récemment contribué au projet [favicon_maker](https://github.com/follmann/favicon_maker) car cette gem ne répondait pas tout à fait à mon besoin : supporter TOUS les appareils du marché en terme d'icônes.

Voici un guide pour exploiter pleinement la création de favicon de façon automatisée.

## État actuel des favicon

Pour supporter correctement les appareils mobiles android, iOs, windows 8 et sans oublier les navigateurs classiques vous devez créer plus de 17 formats d'images.

Il est possible de créer un script Photoshop pour automatiser le processus, mais il reste 2 problèmes :

- Compliqué niveau maintenance
- L'export au format <code>.ico</code> n'est pas natif dans ce logiciel.

Heureusement favicon-maker peut nous simplifier cette tâche de création d'images.

## Configuration

La première chose à faire est d'inclure la gem dans votre <code>Gemfile</code>

    gem 'middleman-favicon-maker'

Dans votre dossier `/source/` ajoutez vote image `favicon_base.png (Vous pouvez spécifier un autre chemin dans votre fichier de config)

Pour activer la création des différents formats tout se passe dans <code>config.rb</code>

    configure :build do

      activate :favicon_maker,
        :favicon_maker_versions => [ :apple_152, :apple_144, :apple_120, :apple_114, :apple_76, :apple_72, :apple_60, :apple_57, :apple, :fav_196, :fav_160, :fav_96, :fav_32, :fav_16, :fav_png, :fav_ico, :mstile_144 ]

    end

## Intégration

Il ne reste plus qu'à appeler correctement nos images dans le HEAD de notre document

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

