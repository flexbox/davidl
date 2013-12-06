---
title: Revue de livre Javascript
date: 2012-01-01
page_title: Javascript par Nicolas Froidure
---

Si vous suivez mon activité sur [twitter](http://twitter.com/_flexbox) vous avez surement remarqué que je lis énormément de livres sur l'industrie du développement web. Mon dernier livre ? Javascript™ rédigé intégralement en français par monsieur Nicolas Froidure himself.
Cet article présente ma revue de la version poche, ainsi que le contenu que j'ai retenu de ces 400 pages de code.

## Le format poche

Pour commencer, j'ai trouvé le format poche (ou tablette 9') génial. Il se glisse partout et vous pourrez facilement le sortir pour passer le temps.
Image livre
Il m'a fallu un peu plus d'un mois pour parcourir l'intégralité des 12 chapitres consacré au langage Javascript : rappel des fondamentaux, travailler avec des objets, utiliser des tableaux, les API HTML5, nodeJS ...

Le fil rouge de l'ouvrage est la création d'un jeu de memory. Ce concept permet de présenter une utilisation concrète dans un environnement de développement contrairement à une présentation aléatoire de [snippet]() divers et variés. L'intégralité du code source est disponible sur [github](http://github.com/nfroidure). Vous pouvez aussi [tester directement](http://memory.insertafter.com) le rendu final du jeu.

##Contenu

L'objectif du livre est de guider pas à pas les lecteurs en expliquant chaque notion simplement.

- Structure d'un fichier Javascript : variables, instructions et expressions.
- L'appel aux fonction et leur effet de retour (callback).
- La gestion des erreurs.
- La notion d'objet avec une explication des concepts de constructeur, d'instance, de prototype, d'héritage ...
- La manipulation de chaîne de caractères et les [expressions régulières](regexp).
- Les calculs à l'aide de l'objet Math.
- Utilisation des tableaux.
- Les méthodes dates & les fonctions natives de Javascript.
- Coder dans le navigateur et comprendre le DOM.
- Le chargement de contenu distant avec XMLHttpRequest, et leur transport via JSON.
- Les API HTML5 (TouchEvent, Camera, appcache, ...)
- Créer des applications interactives et participatives avec NodeJS.

## Ce que le front-end dev a retenu

Le Web évolue rapidement. Les intégrateurs ont été majoritairement touchés par les changements récents dans les techniques et les approches de codage. En 2003, un intégrateur compétent maîtrisait HTML et CSS, avec un peu de copier-collé JavaScript. Nous avons construit des sites web qui étaient consultés sur des ordinateurs de bureau.
Mais nous sommes en 2013 ! Maintenant, un développeur Web front-end compétent baigne dans HTML et CSS, JavaScript et jQuery, les preprocessors CSS ..., la complexification des interfaces demande une certaine maîtrise de Javascript.
Comme expliqué dans l'introduction de ce livre j'ai appris Javascript plutôt par obligation, mais aussi par curiosité, sur le tas. Mon niveau est toujours proche du néant mais je me [débrouille mieux](http://pokemonbreakpoint.fr) Je me considère plus comme un utilisateur de Framework que développeur JS. Les 200 premières pages sont et resteront toujours obscures à mes yeux mais cela permet de connaître l'origine de certaines librairies qui sont -trop souvent- incluses sans forcément en avoir besoin (jQuery par exemple)

J'ai découvert grâce à ce livre pas mal de notions :

- `console.trace()` pour dépiler toute votre stack JS
- `document.getElementByTagNames()` pour récupérer une liste d'élément ayant un nom de balisage précis. `.is()` en jQuery c'est tout de suite plus simple.
- Créer des applications web hors-ligne à l'aide d'un fichier .manifest
- Les Touch event mdn API HTML5 et son équivalent `pointerEvent` pour les technologies Microsoft.
- NodeJS : Créer un serveur et utiliser `npm`

## Pour le prochain Tome

>Javascript c'est un peu comme les échecs. Dès que l'on maîtrise les règles, on se rend compte qu'on ne sait pas jouer
>
>David Leuliette

Ce livre permet de vous enseigner/de revoir les bases de ce langage mais je trouve qu'il manque certains chapitre entièrement dédiés concernant :
- Les conventions de codes
- La performance qui devient vite critique sur les grosses applications
Mais ces 2 sujets méritent des livres entiers rien que pour eux. Il existe aussi une version normale du livre avec des bonus comme
- La performance
- Les design patterns
- Les frameworks
- La boite à outils du développer Javascript

J'attends avec impatience la version 2 !
Si Javascript vous interesse rapprochez vous de l'initiative FranceJS qui regroupe de nombreux développeurs talentueux à travers toute la France.
Dans ch'nord nous avons [@chtijs](http://twitter.com/chtijs) qui organise régulièrement des rencontres. N'hésitez pas à venir rencontrer les fondateurs [@nfroidure](http://twitter.com/nfroidure) et moi même.
