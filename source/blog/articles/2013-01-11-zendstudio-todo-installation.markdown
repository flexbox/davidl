---
date: 2013-01-11 16:32:44+00:00
slug: zendstudio-todo-installation
title: Zend studio la todo list ultime après une nouvelle installation
page_title: Augmenter sa productivité avec Zend Studio
changefreq: monthly
priority: 0.8
---

Zend Studio est un IDE basé sur Eclipse.
Il permet aux développeurs web d'avoir un environnement de développement rempli de fonctionnalités pour gagner du temps.

Récemment j'ai mis à jour ma version de Zend Studio. Voici une liste de conseils à suivre pour toute nouvelle installation.


## Installer les modules


![Welcome to ZendStudio](blog/legacy/2013/01/welcome.png?raw=true)

Menu :
`Help` > `Welcome`

1. Sélectionnez les modules de votre choix
2. "Apply changes" pour les installer

Dans mon cas de développeur web-front je recommande d'installer les plug-in suivants :

* Php 5.4
* Git and GitHub
* jQuery Support
* Zen Coding


> CTRL + E avec le plugin ZenCoding tu utiliseras
>
> Conseil du pro


Essayez avec cette syntaxe vous allez vite comprendre


    div#page>div.logo+ul#navigation>li*5>a


Pour ceux qui n'ont pas d'éditeur à porté de clic cet exemple vous créera le code suivant

<iframe width="560" height="315" src="//www.youtube.com/embed/M69Pi_74hgE?rel=0" frameborder="0" allowfullscreen></iframe>

Un gain de temps considérable en perceptive notamment avec la fonction de multiplication.
Si vous cherchez plus d'informations sur ce plugin consultez [ce tutoriel]( http://coding.smashingmagazine.com/2009/11/21/zen-coding-a-new-way-to-write-html-code/)


## Le codage des caractères


D'expérience le codage des caractères peut se révéler catastrophique si il n'est pas bien choisi dès le départ.

Pour votre prochain projet en PHP choississez les paramètres suivants :

* Encoding : UTF-8
* Text-file : Unix


![Encoder vos fichiers en utf8](blog/legacy/2013/01/utf8.png?raw=true)

Menu : `Windows` > `Preferences` > `General` > `Workspace`

Tous vos projets seront enregistrés au même format de fichier. Cela vous évitera de nombreuses crise de nerfs lors de la mise en ligne de votre site.


## Un peu de style


Coder des heures sans avoir un thème adapté ça pique au yeux !

Voici un site web ou vous pourrez télécharger des thèmes par milliers : [eclipse colors](http://eclipsecolorthemes.org/)

Pour les installer il faut télécharger le fichier au format .EFP (Eclipse Preferences)

![Importer un thème](blog/legacy/2013/01/import.png?raw=true)

Menu : `File` > `Import`
