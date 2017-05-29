---
date: 2016-03-10
slug: mobile-first-webdesign
title: "3 astuces pour un webdesign mobile first évolutif"
description: "Pourquoi vous devez dès aujourd’hui concevoir et intégrer votre site web avec la méthodologie mobile-first"
image: https://c2.staticflickr.com/2/1682/25809105455_9af84255e1_b.jpg
page_title: Moins de code = moins de bugs
page_emphasis: Apprendre à coder depuis une vision mobile pour de meilleurs expériences web
changefreq: monthly
priority: 0.5
---

C’est officiel [le mobile est le premier accès à internet](http://www.journaldunet.com/media/publishers/1173852-les-francais-sont-mobile-first/) des français. Depuis plusieurs années je suis convaincu de l’approche “mobile-fist”. Faire grandir un projet est plus facile que de [rentrer une girafe dans une twingo](http://blog.impala-webstudio.fr/responsive-design-ou-comment-faire-entrer-une-girafe-dans-une-twingo-en-trois-temps).
Un code organisé simplement est plus facile à maintenir, s’analyse plus rapidement par les moteurs de recherche, nous force à __prendre des décisions difficiles sur le contenu au début__, et nous encourage à conserver l’essentiel.

![David Leuliette mobile first](https://c2.staticflickr.com/2/1682/25809105455_9af84255e1_b.jpg)

Dans la vraie vie, __personne ne veut faire de mobile-first__. Les clients continuent à vouloir des [maquettes grand écran sur Photoshop](/blog/fin-psd.html), et il est plus difficile de vendre une petite version d’un grand projet. Cependant — pour votre santé mentale — il existe des méthodes de codage pour vous faciliter la vie, même si le design mobile vient dans un second temps.

## Réinitialiser les valeurs pour un design optimisé mobile

Réinitialiser les propriétés CSS est souvent __la chose la plus chronophage__ dans la conception d’un site internet responsive. Si la version grand écran d’un composant est plus complexe que la version mobile, il aura plus de code CSS à réinitialiser. C’est pourquoi il existe des [solutions pour unifier le design](https://github.com/necolas/normalize.css) sur des bases stables.

N’oubliez pas que la taille de base est du texte est de [16px pour éviter le bug du zoom](http://uxcellence.com/2014/01/15/quick-fix-increase-font-size-to-16px-to-fix-input-zoom/) sur les `inputs`.

> Global font-size increased from 14px to 16px.
>
> <cite>Bootstrap migration guide from v3.x to v4.x</cite>

## Utiliser les `media queries` dans une logique évolutive et non destructrice.

Commencez avec le CSS pour les petits écrans, puis ajoutez de la compléxité pour les écrans plus larges. Les sélecteurs CSS en fin de fichiers écrasent les déclarations précédentes. Codez vos styles pour le mobile en premier et utilisez les `media queries` au besoin.

~~~sass
  /* Default to a small-friendly size by not using media queries … */
  p {
    font-size: 18px;
  }

  /* … then override it for larger screens. */
  @media all and (min-size: 640px) { … }
  @media all and (min-size: 1000px) { … }
  @media all and (min-size: 1200px) { … }
~~~

## Forcez vous à être concentré sur des composants

Heureusement, la conception mobile-first fonctionne à merveille avec cette technique. Au lieu de vous concentrer sur une grande mise en page, décomposez et soignez les petites parties. Repérez chaque composant `header`, `navigation` , `hero banner` … dans un contexte de petit écran. Est-ce qu’il vit correctement tout seul ? Si ce n’est pas le cas, comment pouvons-nous l’améliorer?

Coder en conservant un état d’esprit mobile-first demande un certain temps pour s’y habituer, mais je pense qu’à la fin vos feuilles de styles seront plus simples à produire et à maintenir. Cela nous force à poser des questions difficiles dès le début — et pas la veille d’une deadline.
