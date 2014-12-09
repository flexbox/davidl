---
date: 2014-08-24
slug: sublime-source-code
title: Coder plus efficacement avec Sublime Text
description: "Pourquoi Foundation est à l'heure actuelle le meilleur framework pour le responsive design avec HTML & CSS ?"
image: https://lh4.googleusercontent.com/U6kbOYceOAWw8Ptr9AtVLBt-h6j6mH4jm2s2DjducmM=w449-h300-no
page_title: Sublimer votre code source
changefreq: monthly
priority: 0.8
---

Si je me souviens bien, le premier logiciel logiciel que j'ai utilisé, pour "développer" un site internet, c'était Frontpage. Tout ceux de la génération pré-ADSL ont sûrement commencé ou connu cet éditeur.

Depuis j'ai essayé énormément d'applications différentes pour coder, des éditeurs de texte ou des IDE, et la liste est longue :

- Frontpage
- Dreamweaver
- [Notepad++](http://notepad-plus-plus.org/fr/)
- Gedit
- Vi
- Eclipse
- Zend-Studio
- Aptana
- Komodo
- [Atom](https://atom.io/)

Et je pense que cette liste n'est pas complète. Cependant mon éditeur de prédilection reste [Sublime Text](http://www.sublimetext.com/). Ce programme peut sembler minimaliste, mais il est très efficace si il est configuré correctement. Et c'est là sa grande force : une communauté active avec énorméments d'extentions disponibles.

Dans cet article je vais vous expliquer comment ce logiciel m'aide chaque jour à coder plus rapidement.

## Installer le gestionnaire de packet

La première chose à faire après une nouvelle installation est d'installer _le gestionnaire de packets_.

Il suffit pour cela d'ouvrir la console `View` > `Show Console` et de copier le script disponible sur le [site de gestion des packets pour Sublime Text](https://sublime.wbond.net/installation).

__C'est tout__. Une fois cette étape terminée vous êtes prêt à travailler.

Cela vous amènera à personnaliser l'éditeur _en fonction de vos besoins_. La courbe d'apprentissage et de maîtrise est donc meilleure, comparé à un énorme IDE qui fait tout mais qui vous demandera _plusieurs mois d'apprentissage_ pour maîtriser l'outil -pour vous rendre compte qu'il ne réponds pas toujours à vos besoins.

## Personnaliser Sublime Text

Pour installer une extention c'est très facile. Il vous manque la coloration syntaxique pour les fichier `.coffee` ou `.sass` ?
Utilisez simplement le raccourci `cmd` + `shift` + `P` et tapez `install`. Il ne vous reste ensuite plus qu'à faire votre recherche.

![Packets Sublime Text front-end dev](https://lh4.googleusercontent.com/31cDqfLhm9BWGYEI2H7el1BgXi5axo2vuR0rjRyLsh0=w423-h239-no)
_Voici la liste des packets que j'utilise_

Si je ne devais en choisir qu'une liste réduite cela serait sans hésiter :

- [emmet](http://emmet.io/) (anciennement zen-coding) pour coder plus rapidement.
- [GitGutter](https://github.com/jisaacks/GitGutter) pour visualiser vos diff git en temps réel.
- Le theme [Nexus Dark UI](https://github.com/EleazarCrusader/nexus-theme) pour une lecture confortable.

## Configuration de ninja

Voici le fichier de préférence que j'utilise sur toutes mes machines. Sur Ubuntu j'ai du changer la police de base car le rendu n'est pas le même comparé à Mac OS X. Si vous souhaitez utiliser le même il suffit d'ouvrir les `Settings - user` (`cmd` + `,`) et de modifier le fichier `Preferences.sublime-settings`.

~~~ json
{
  // Theme and scheme
  "color_scheme": "Packages/Theme - Nexus/Nexus.tmTheme",
  "theme": "Nexus.sublime-theme",
  "show_full_path": true,
  "font_face": "Menlo",
  "font_size": 10.0,
  "highlight_line": true,
  "hot_exit": true,

  // Custom UI and Zen search
  "folder_exclude_patterns":
  [
    ".sql",
    "*/sql/*",
    ".svn",
    ".git",
    ".hg",
    "CVS",
    ".idea",
    "build",
    ".cache",
    "tmp/cache/",
    "features",
    "spec/"
  ],
  "ignored_packages":
  [
    "Vintage"
  ],

  "open_files_in_new_window": true,
  "remember_open_files": false,
  "rulers":
  [
    120
  ],

  // Coding convention
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_automatic_white_space": true,
  "trim_trailing_white_space_on_save": true,
  "default_encoding": "UTF-8",
  "detect_indentation": true,
  "ensure_newline_at_eof_on_save": true
}
~~~

## Démarrer Sublime Text depuis un terminal

C'est l'une des killer feature diponible sur les systèmes possédant un vrai système de fichier : utiliser un `alias` pour lancer directement Sublime Text.

- Raccourci pour [Mac OS X](https://gist.github.com/artero/1236170).
- Lancer sublime text depuis [un terminal avec linux](https://coderwall.com/p/iuxapa).

![Raccourci terminal Sublime Text](https://lh4.googleusercontent.com/U6kbOYceOAWw8Ptr9AtVLBt-h6j6mH4jm2s2DjducmM=w449-h300-no)

_En moins d'une minute vous pouvez corriger une erreur. On fait le même test avec un IDE ?_


## Productivité accrue au clavier

Voici une liste des raccourcis que j'utilise quotidienement :

- `cmd` + `t` : Trouver un fichier.
- `cmd` + `n` : Nouveau fichier (notez qu'il est sauvegardé directment au même emplacement que le dernier fichier ouvert).
- `cmd` + `shift` + `t` : Réouvrir un fichier fermé (comme dans un navigateur web).
- `cmd` + `shift` + `p` : Parcourir les commandes disponibles (indent file, reorder, git blame, install package ...).
- `cmd` + `d` : Sélectionner plusieurs mots.
- `cmd` + `shift` + `d` : Duppliquer la ligne en cours.
- `cmd` + `shift` + ↑ : Écriture multiligne.
- `ctrl` + `shift` + ↑ : Déplacer la ligne.
- `ctrl` + `W` : Enrobage intelligent (sélectionner un texte, raccourci, saisir le markup, enter).

![wrap HTML tag](https://lh4.googleusercontent.com/0H2MnLt8ZRY8Py1-G2ogMVRdGEhXW8Ky3ovqA0EmEKo=w588-h300-no)

Vous voila convaincu pour utiliser Sublime Text pour votre prochain projet, même si ces conseils sont plus accès intégration et développement front-end.

N'hésitez pas à me partager vos packets pour compléter cette liste.
