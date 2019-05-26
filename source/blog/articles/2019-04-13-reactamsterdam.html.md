---
date: 2019-04-13
slug: reactamsterdam
title: Ce que j'ai appris à React Amsterdam édition 2019
description: description
image: https://lh3.googleusercontent.com/HBRyqc-AVTMvNiEWFVUBVVp8Sn45rIyFgv9gCZrGObWn_BGTRNnc91Zw3-r8rZScWLmzuKwk-QEhWFzT8wTP7fElCuXp1gE8F6QT0vsjRvVYhlwP8tVsNlZeFxwPWKfQ0gJ2QXqrMyycueUSApIYpuKzNAG99iZFSlXHLS06smqN9TkEp7l1XTZK3m7iDWj4WV-wC4VORxzVkknqU78RQFjyKw3--wAqBcHyC7XHSEw__Lzaxa7txWPL7N0QHGvKiXs2SghiPjSEIzl7EikoBdDHZB0ljH3u2efoHDt2KDlVkJ_k_4lE_IVJzCwXG7arLRwNafULnaqv46-7TuAvypIPpZXQPxZ7wVo0fouRZ2DWOBOx1qnFIOX26fOydRyDmp_dqiuZrprtFlSxwvy_qBGPc3B2k4tE6RvPRXMQ14loi_zGZLBQMkTvTVzmhp8iFszm21u8lzD7paV4sit0ig9XJFk9kkA2uHGwCdMbib19PpINt4zOtFMSv1q5v5PvM26uJI7JQwiQzxgwc_VHYwzd-Usz7EVqlFpIUVBFAWXO482G9KdBENgxX9-RNF2G-ra1WvB3-SMJ5sXKLln2Z2KJ38ijxj6Y7fjRaYyHyqtj4ilnWMrVgaaGGFrtj91GG2y_EvbNvgwm_zplCootXBv9woCEQByB=w1024-h512-no
page_title: React Amsterdam
page_emphasis: <del>Hacks</del> <del>HOCs</del> HOOKS
---

Ce week end j'ai voyagé jusque Amsterdam avec la team de [coach ReactJS Academy](https://reactjs.academy/about-us/) pour donner un workshop sur React Native à 50 personnes, ouvrir un stand de distrution de T-Shirts / stickers et assister avec plus de 1300 développeurs React à la journée de conférence.

Je dois avouer que cette édition fut excellente. On sent que la team est très organisée, il n'y a pas de place au hasard. Timing respecté à la seconde et la qualité des talks etait au rendez-vous.

## React Native workshop

Le premier jour j'ai <del>partagé mes connaissances en React Native</del> [fixé les erreurs de buils](https://twitter.com/flexbox_/status/1115738108442611712) de la récente mise à jour de macOS 10.14.4 et Xcode 10.2 auprès de nos étudiants.

![React Native workshop](https://pbs.twimg.com/media/D34L2APW0AMJDxW.jpg)
_Alex Lobera présente `Animated.View`_

L'objectif de notre workshop était clair **créer un clone de Twitter**. En une journée, nous avons eu le temps de :

- Présenter React Native avec Expo
- Design d'un composant `LoginScreen`
- Ajouter différents écrans avec `react-navigation`
- Afficher les données venant d'une API
- Animer notre application

Les sources des exercices sont [disponible sur GitHub](https://github.com/reactjsacademy/react-native-training).

## Comment améliorer votre niveau en React?

Deuxième journée : conférence organisée autour de 2 thèmes **React** et **React Native**.

![Sketchnote React Amsterdam devenir un meilleur developpeur](https://live.staticflickr.com/7859/32649416207_33d1d56197_b.jpg)

Conseil de Kent C. Dodds pour améliorer vos compétences en React : vous devez comprendre les abstractions que vous utilisez et ne pas avoir peur de regarder les implémentations dans `node_modules`.

## Partager du code entre vos applications React et React Native

J'attendais ce talk avec impatience. Si vous travaillez dans une grande entreprise comme made.com, comment faites vous pour mutualiser vos ressources et éviter la dupplication de code?

![Sketchnote React Amsterdam](https://live.staticflickr.com/7856/47538904452_fac47c1080_b.jpg)

- ✅ API
- ✅ Configurations
- ✅ Logique Business
- ❌ UI

## Direction Artistique avec React

En parlant à l'after-party à Mark Dalgleish j'ai appris toute l'histoire qui se cache derrière le projet [`playroom`](https://github.com/seek-oss/playroom). Envoyez moi un DM si vous souhaiter savoir le secret, en attendant j'aurais rêvé avoir cet outil il y a 4 ans quand je travaillais en agence web pour différents clients.

![Sketchnote React Amsterdam](https://live.staticflickr.com/7878/32649416687_56067324e6_b.jpg)

`playroom` permet de travailler sur différentes version d'un même composant React avec un système de prévisualisation qui ressemble à la GraphQLi.

## Les regrets technologiques chez Spectrum

Le créateur de `styled-component` Max Stoiber nous a présenté les mauvais choix technologiques qu'il a réalisé pour son application Spectrum.

![Sketchnote React Amsterdam](https://live.staticflickr.com/7851/46868428134_7fdf6bb55b_b.jpg)

Depuis le temps que je le dit que les WYSIWYG c'est de la 💩. Max tu as craqué il fallait me passer un coup de téléphone, je t'aurai conseillé avec plaisir !

## Fullstack React Native développeur dans le monde du serverless

Pour mes chers recruteurs j'ai un nouveau buzzword pour décrire mon poste. Je suis : **FullStack Serverless React Native Developer**.

Je n'utilise pas encore AWS Amplify pour gérer mon API GraphQL mais je compte bien creuser le sujet.

![Sketchnote React Amsterdam](https://live.staticflickr.com/7881/46677561525_4b05f82a4f_b.jpg)

Pour ceux que ça intéresse je vous invite à suive [@dabit3](https://twitter.com/dabit3) qui travaille chez Amazon et regarder le projet [`react-amsterdam-conference-app`](https://github.com/dabit3/react-amsterdam-conference-app)

## Démistifier le création d'animations complexe avec React Native

Les animations dans une application mobile c'est bien. Savoir quand et où les positionner pour avoir une bonne expérience utilisateur c'est mieux.

![Sketchnote React Amsterdam](https://live.staticflickr.com/7912/46678255785_b7b32dd661_b.jpg)

> Toute technologie suffisamment avancée est indiscernable de la magie.
>
> <cite>Arthur C. Clarke</cite>

Trop souvent les animations sont utilisées sans aucun sens ou logique. En tant que développeurs / magiciens, c'est notre responsabilité de ne pas compliquer nos interfaces pour ne pas perdre l'utilisateur.

## Étrangler le legacy de vos applications mobiles

Pour finir cette journée de folie un excellent sujet : Comment remplacer d'anciennes applications sans détruire son business ? En appliquant une stratégie d'A/B testing qui permet de migrer progressivement ses utilisateurs en utilisant le [strangling pattern](https://docs.microsoft.com/en-us/azure/architecture/patterns/strangler).

![Sketchnote React Amsterdam](https://live.staticflickr.com/7917/47593776861_91571263c5_b.jpg)

## After party

Toute bonne conférence à le droit à son after party digne de ce nom. L'année dernière à [React Finland](/blog/react-finland.html) j'étais dans un aquarium à boire de la bière sans musique.

Cette année c'était un peu plus "conventionnel" avec la performance d'un musicien / codeur qui à râvi l'audience.

<iframe src="https://player.vimeo.com/video/309869256" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
