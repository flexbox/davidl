---
date: 2013-11-15
slug: javascript
title: Maitriser rapidement JavaScript
description: JavaScript par la pratique. Découvrez ou redécouvrez le language JavaScript lors de la création d’un jeu de memory.
image: https://lh3.googleusercontent.com/xwdp6MR-DwtmSiIMvNO1UUwG-iMf07q8aB84YmjOXkaqzR83_L2CBLzOFXwTXe9u0n01ds3Nzjen-VCVkBs5mhEMX29TIHIb2uuWYsBLbaxFsCrfTu2zginOrn4YixqrDT-kVox-FTpVpSbtq7b1PjLe-7hzbHUYo1_ycD1KZHDx2OrTGpTu0UI5Ge5ObCvD9NBj1fb5QE_Ld_u1Px94rs_VdqTqUmIrdYWiEBYwDrcbtSekJ_UaQOoSEZKE509S3_ANep0f84eJfRinSq8pusauOjQV_ZdBI65TMJFiFMydr1MLx8i-ENDxunGtp9ILMUnko2TY2eiAGFMkfYM4D1o0g5io9HA8m0PBDa9TiTrLL8VU_9jglg2NJjASNxyOWnk6zFwyUJtCURtlJSVA4SHXOfaG7HGAXvgPlM3yUFEOLZzoYYw2XdSDWH4QqYr8MdSAbCPe_ZdsDdjwspyfgzCILZlZFlzgU8oNxMc0Vk-t70K3u-HNYKRVsKwcABGQPeY-2BsfALtEnycwVf5kysX4yLDEj8B3gL5SyTMXRD-RNsznAzzMHT5GcXG1eUiSXKL4M18kFkxX0iLoGjE3kFJVnPA3bcn100pQ2PYejZDqosUA=w1024-h512-no
page_title: JavaScript™ par Nicolas froidure
page_emphasis: JavaScript ? même au XXIème siècle ça n’a rien à voir avec Java ou J2EE
changefreq: yearly
priority: 0.5
---

Si vous suivez mon activité sur [twitter](https://twitter.com/_flexbox) vous avez surement remarqué que __je lis énormément de livres sur l’industrie du développement web__. Mon dernier livre ? Javascript™ rédigé intégralement en français par mon ami Nicolas Froidure himself.
Cet article présente ma revue de la version poche, ainsi que le contenu que j’ai retenu de ces 400 pages de code.

## Le format poche

Pour commencer, j’ai trouvé le format poche (ou tablette 9') génial. Il se glisse partout et vous pourrez facilement le sortir pour passer le temps.

[![Les bases de Javascript](front/books/nicolas-froidure-js.jpg?raw=true)](http://amzn.to/2d9AhoS)

Il m’a fallu un peu plus d’un mois pour parcourir l’intégralité des __12 chapitres consacrés au langage JavaScript__ : rappel des fondamentaux, travailler avec des objets, utiliser des tableaux, les API HTML5, Node.js …

## Contenu

Le fil rouge de l’ouvrage est la création d’un jeu de memory. Ce concept permet de présenter une utilisation concrète dans un environnement de développement contrairement à une présentation aléatoire de [snippet](https://fr.wikipedia.org/wiki/Snippet) divers et variés. L’intégralité du code source est disponible sur [github](http://github.com/nfroidure). Vous pouvez aussi [tester directement le jeu dans un navigateur](http://memory.insertafter.com) le rendu final du jeu.


![JavaScript memory game gif](https://lh3.googleusercontent.com/GPq4MRIV0re9VrGUKLHAUxpiCoaJZuDQZUrAxDgBiHIf1HH7olBkkE9XVil1tTnZf9j__fpfDgZ-4YYF9mDNVWs_PBGtIuaGbW0-hqnUhAv_ro67alhCKbRdbHb5czJAtCq8mCC_tZWFUaASMyfInY8fgmOft9jsyKtyVd5nQYJSkml7SVHRpdHYD0RaNtbRPrUBu1e67ov5jNYmyfmcBCwRrI3lVnJKkAyygbjHvtnl4xb84BTVBgiAPw6mvAVa02Sg90j6km2MaXd67QEG8y8ozMjOTUTocH_3jSdfu6wyUYDewZUhSLvyMR_3G8228CY5vBZ6ubB_dApwDWhpsBukElpAlYU1IQKWs2ak-JPstLIrpC9xXC9H7Bzd-GJLsDSXuqvKmWONMeQFB9X8VjY80YSflmERZKMLg8o-j7CROKsohcPEf2t288urOyQez8VdSLBcQP94cx248F8JONWLUSh75Xx9hd9rPzWnHCqo-5EdznklQxU-M6Y4LMG_A0seswj5AIxpkiZctIHsBNyWQMe9JvcmkhU9HiAZhKOChOyCHth9GD9_Mk_IdefxgQSNm_Xx1sP29QKwQqcu5Tjt4XtordLyUb-6QmYua77cHccA=w593-h378-no)

L’objectif du livre est de guider pas à pas les lecteurs en expliquant chaque notion simplement.

- Structure d’un fichier JavaScript : variables, instructions et expressions.
- L’appel aux fonction et leur effet de retour (callback).
- La gestion des erreurs.
- La notion d’objet avec une explication des concepts de constructeur, d’instance, de prototype, d’héritage…
- La manipulation de chaîne de caractères et les [expressions régulières](http://leaverou.github.io/regexplained/).
- Les calculs à l’aide de l’objet `Math`.
- Utilisation des tableaux.
- Les méthodes dates & les fonctions natives de JavaScript.
- Coder dans le navigateur et comprendre le `DOM`.
- Le chargement de contenu distant avec `XMLHttpRequest` — aka Ajax — et leur transport via `JSON`.
- Les API HTML5 (TouchEvent, Camera, appcache, …)
- Créer des applications interactives et participatives avec Node.js.

## Ce que le front-end dev a retenu

Le Web évolue rapidement. Les intégrateurs ont été majoritairement touchés par les changements récents dans les techniques et les approches de codage. En 2003, un intégrateur compétent maîtrisait HTML et CSS, avec un peu de copier-collé JavaScript. Nous avons construit des sites web qui étaient consultés sur des ordinateurs de bureau.

Nous sommes en 2013 ! De nos jours, un développeur Web front-end compétent baigne dans HTML et CSS, JavaScript et jQuery, les [task runner](https://www.anthedesign.fr/developpement-web/tasks-runner-developpeur-front/) comme Grunt ou Gulp, les preprocessors CSS… la complexification des interfaces demande une certaine maîtrise de JavaScript.

Comme expliqué dans l’introduction de ce livre, j’ai appris JavaScript plutôt par obligation, mais aussi par curiosité — sur le tas. Mon niveau est toujours proche du néant mais je me [débrouille mieux](http://flexbox.github.io/pokemon-breakpoint/) Je me considère plus comme un utilisateur de Framework que développeur JS. Les 200 premières pages sont et resteront toujours obscures à mes yeux mais cela permet de connaître l’origine de certaines librairies qui sont — trop souvent — incluses sans forcément en avoir besoin (jQuery par exemple).

J’ai découvert grâce à ce livre pas mal de notions :

- `console.trace()` pour dépiler toute votre stack JS
- `document.getElementByTagNames()` pour récupérer une liste d’élément ayant un nom de balisage précis. `.is()` en jQuery c’est tout de suite plus simple.
- Créer des applications web hors-ligne à l’aide d’un fichier `.manifest`
- Les Touch event mdn API HTML5 et son équivalent `pointerEvent` pour les technologies Microsoft.
- Node.js : Créer un serveur et utiliser `npm`

## Pour le prochain Tome

>JavaScript c’est comme les échecs. Dès qu'on maîtrise les règles, on se rend compte que l’on ne sait pas jouer.
>
>David Leuliette

Ce livre permet de vous enseigner / revoir les bases de ce langage mais je trouve qu’il manque certains chapitres entièrement dédiés concernant :

- Les conventions de codes
- La performance qui devient vite critique sur les grosses applications

Mais ces 2 sujets méritent des livres entiers rien que pour eux ! Il existe aussi une version enhanced du livre avec des bonus comme :

- La performance
- Les design patterns
- Les frameworks
- La boite à outils du développer JavaScript

J’attends avec impatience la version 2 !
Si JavaScript vous interesse rapprochez vous de l’initiative FranceJS qui regroupe de nombreux développeurs talentueux à travers toute la France.

![Groupe de développeurs JavaScript Haut de France](https://lh3.googleusercontent.com/PMfxgdPCVWOMtuxQ9Aq16mU0OKeoPz0nDvwkPG3XCyStOvEPEFc_0vYdouF07CkmC6jt_AiZdv2wqoDRSkTpX_xd8wcZy9kSvQstlOchMLIkfaBl8gJY2YGUALfe3OBefQVUOwqe3a2YpI5ZpVNyVRPbL6RJHNNRB043mGIOZVmr9_z5cECqdYkrBKyrcMacNLv3sXHjIeWsiX5qCltl7qnDHJazt8tTU1Wn1wzRU9dSRywLkK8vir0NIrJwwWQVweY68sd-uRZmWwqyaqBMVkjT-8V6qAIOdkdlCAXvKX0RjJaUglnj0Ba-_UkQYXoVf161opzCv0zgo6UG2FSp-lzCCgzEnWnafU8APyHlqLz8ojpZ36tYoux73KUiaXUf7zWDM7-05PSV7dH_iHjn7CDlJaeK0pFM4IYAw99mv6tOCe8n7AVyEaRnji-dWkr_XqWoGzpoEYU-upDbgHwO_OhDZ2VPnN15YLxJ1NXMnoEy1Lw-Xqvqd0QHRF1Gvi6TORCzsykW11aytwUzFKDrVHN2Tw16sYceL41mHJFQoes7nhL-28-rbw8z4U9OXBFR2M89491Vt-5uQ0bPo2PT6e-tZYYpubGVGAGCGI_1kh0yqJK5=w1024-h402-no)

La communauté des développeurs JavaScript Hauts-de-France se retrouve sous la bannière [@chtijs](https://twitter.com/chtijs) et organise régulièrement des rencontres. N’hésitez pas à venir parler aux fondateurs [@nfroidure](https://twitter.com/nfroidure) et moi même.
