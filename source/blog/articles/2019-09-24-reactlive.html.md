---
date: 2019-09-24
slug: reactlive
title: Ce que j'ai appris à React Live édition 2019
description: Sketchnotes de David Leuliette sur la conférence React Live à Amsterdam
image: https://lh3.googleusercontent.com/KDty6PbCFiNMxyPGcGRSQo4BsMRymLeluP68IRKk_1g21ECzd1zo6HMUshNgU32FdU9urIH815EZ4_yg5xHDgLIE5yzkpMBRqlvRJNEuiv_Q05n2Jws5WozXv8JIbZ5P8ZVIrWDPolQEHvT1eb3I3cOEVbuMc48czCsG-5ryLdz10VbDYMlBbdlSeEXeIgGiAxWArVUa16qaaw4ZPD4-qQkXby0hHgLu-aEXOmUz5FV0qGYKOftoUhreZoBISYR0oN9QCSsMnByfYEiXnWjkb9HRHXszCB4m_RSmXj550MD8owiboD7pqRdJ7KtS2oKFkYcF4SQWvg2iK331n8uGx367xe3H988BAUfo-uAKihTpSbUK7lmRxiSsw36hlKeb3FtO04dfBU3aIRkOWI_EmhqbafDGJjy2OEhWSF3sTSP6OFqV_xeVpd3TLUM0tYJU7o8smj1LbH5EO17fnjRonTN1zf5WZfTrEkqyKIc0saOwPT0GwUBX7_HWYgHuxJXvEkcC2j8p2D7zeYriM3OmyX4bXQT0hWJzEcGx71exUFRvlh3mNMG4RA9qQmCLn7R8uazM7HtdWPF4ZlR_IObv_Hc28sXSaj8G1d-gOJ6e8HBfJ8ZisR3tkCIu2QZEBILYyY_X5chcvb3PQtsntVOmXTdGGhtvLFSlTA8kWbDj8xLEmJ-ESYLrz3Q=w1024-h512-no
page_title: React Live
page_emphasis: Live coding sur un êcran de 400 pouces… sans internet
---

Le week end dernier donné un meetup à Londres puis j'ai voyagé jusque Amsterdam avec une partie de la [coach team React GraphQL Academy](https://reactgraphql.academy/about-us/) pour assister avec plus de 800 développeurs React à une journée de conférence.

![React Academy Developers](https://live.staticflickr.com/65535/48789420642_84bacb90e4_b.jpg)

## React Live

C'était ma première fois que je suis allé au __Amsterdam Theater__ et je dois dire que le lieux est gigantesque!

Le concept de cet évènement est de faire une conférence avec beaucoup de live coding.
Ceux qui ont déjà eu cette expérience savent que c'est un exercice difficile car il faut coder ET expliquer clairement ce que l'on fait. Pas toujours facile à faire surtout si vous êtes devant 800 personnes.

<div class="responsive-embed widescreen">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/B5bKxxaEsUs" frameborder="0" allowfullscreen></iframe>
</div>

## What goes into building a Design System

J'avais déjà croisé Sid à [React Amsterdam](blog/reactamsterdam.html) pour un talk sur les Hooks et la gestion du state. Cette fois ci il a commencé la conférence…

…avec la bonne idée d'utiliser [codesandbox](https://codesandbox.io/s/reactlive-talk-bshv8) pour les slides…

Sans internet…

Et la bonne nouvelle c'est qu'il y a des brouilleurs dans la salle qui bloquent le réseau.
Dommage pour une conférence axé sur le web. En attendant qu'un bon vieux cable arrive il nous a fait la demo de [fast.com](https://fast.com/) comme outil de `speed-test` que je recommande chaudement.

![React Live Sketchnote 1 par David Leuliette](https://live.staticflickr.com/65535/48726097171_7027dcd4e2_o.jpg)

Les liens du talk sont disponible [sid.st/reactlive](https://sid.st/reactlive)

## Animating an SVG Cat with React.js

Elizabet Oliveira nous a présenté [Framer motion](https://www.framer.com/motion/) pour animer un chat en `svg`.

__⚠️ Protip:__ À tous mes amis designer il est important de nommer correctement ses calques sur sketch! Sinon c'est le chaos pour animer les éléments.

![React Live Sketchnote 2 par David Leuliette](https://live.staticflickr.com/65535/48726271032_a79bfb0e48_o.jpg)

## Building an iOS and Android app in <del>15</del> 25 minutes using React Native

Si comme moi vous êtes developpeur React Native, je pense que vou devez connaitre [infinite.red](https://infinite.red). C'est une boite aux US spécialisé dans le developement d'applications mobiles.

Jamon Holmgren nous a présenté comment utiliser MobX pour la gestion state au global, qui peut être une alternative à Redux.

![React Live Sketchnote 3 par David Leuliette](https://live.staticflickr.com/65535/48726271297_3af32756b9_o.jpg)

- [slides](https://infinite-red.slides.com/infinitered/react-live-amsterdam-2019#/)
- [Repo GitHub](https://github.com/jamonholmgren/TrailBlazers)

## Microfrontends

J'avoue les `Microfrontends` j'ai jamais compris le concept. Dans le cas où vous gérez un énorme site e-commerce avec des centaines de services différents cette architecture est une solution interessante.

![React Live Sketchnote 4 par David Leuliette](https://live.staticflickr.com/65535/48727058197_6d4b975623_o.jpg)

## Adanced Patterns, React 16+ & React Hooks.

Kitze c'était un peu la tête d'affiche de la conférence. J'aime bien son côté Indie Hackers.

Dans ce talk il a mélangé expérience personnelle avec les problématiques liées au freelancing.
Trop souvent la technologie est utilisée pour résoudre des problèmes inexistants.

> En tant que dévelopeurs nous sommes concentrés sur les mauvaises métriques.

![](https://live.staticflickr.com/65535/48804671047_310d5b3105_b.jpg)

![React Live Sketchnote 5 par David Leuliette](https://live.staticflickr.com/65535/48727058367_b3bef69489_o.jpg)

## React Native CodeGen

Si comme moi vous êtes developpeur React Native, vous avez déjà plus ou moins entendu parler de l'architecture avec le Bridge et le Thread JavaScript qui permet de communiquer avec le code Natif.

![React Live Sketchnote 6 par David Leuliette](https://live.staticflickr.com/65535/48726882526_a286945eeb_o.jpg)

## Next Level Coding with Next.js

Le Server Side Rendering c'est compliqué. Sauf si vous utilisez le framework Next.js qui embarque tous les outils pour faire :

- Du SSR
- Client-side rendering
- AMP

Bonus : envie migrer votre codebase en Typescript ? Il y a juste à renommer son fichier `.js` en `.ts` sans configuration.

![React Live Sketchnote 7 par David Leuliette](https://live.staticflickr.com/65535/48727567312_97cd4fec85_o.jpg)

