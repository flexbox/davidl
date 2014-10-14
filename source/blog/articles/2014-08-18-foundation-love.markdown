---
date: 2014-08-18
slug: foundation-love
title: 5 bonnes raisons pour commencer un projet avec Foundation
description: "Pourquoi Foundation est à l'heure actuelle le meilleur framework pour le responsive design avec HTML & CSS ?"
image: http://foundation.zurb.com/assets/img/support/goodies/wallpaper-3%281024x768%29.jpg
page_title: Pourquoi j'utilise Foundation et pourquoi vous devriez faire pareil
changefreq: monthly
priority: 0.8
---

Foundation est dans [le top 10 des repos](https://github.com/trending?l=css&since=monthly) les plus étoilés sur GitHub. Depuis la sortie publique de la [version 3 en 2011](http://foundation.zurb.com/learn/about.html), il y a connu de petits changements. Mais depuis la version 4 c'est un des Framework responsive les plus stable que vous pouvez choisir pour votre prochaine application. Grâce à son système de grille simple, il est apprécié par les développeurs webs de tout horizons - back-end comme front-end, car vous pouvez facilement et rapidement contruire un site internet fonctionnel et responsive. N'importe quel développeur avec des connaissances de base en HTML et CSS peut commencer à utiliser Foundation.

## Pourquoi j'aime Foundation et pourquoi vous devez l'aimer aussi

Foundation offre des bases solides pour n'importe quel site, quelque soit la taille du projet. Il embarque [normalize.css](https://github.com/necolas/normalize.css), qui est indispensable pour avoir un contenu cohérent entre les différents navigateurs. Foundation est basé sur la priorité au mobile (aka mobile-first) ce qui permet une bonne mise en page, notamment au niveau de la typographie. Le `font-size` des textes est calculé en fonction de la taille d'écran. Chaque élément contient un style de base, comme les formulaires qu'il est facile de styler rapidement si vous connaissez les bonnes variables du fichier `_settings.scss`.

![Foundation est incroyable](http://foundation.zurb.com/assets/img/support/goodies/wallpaper-3%281024x768%29.jpg)

J'utilise Foundation car je gagne énormément de temps en corrigeant des problèmes historiques au web. Ce temps gagné me permet d'investir plus de valeur dans la construction de solutions évolutives et personnalisées.

Aujourd'hui les sites internet doivent être modernes, soignés, responsive, et optimisé pour le mobile. Foundation nous aide à atteindre ce but avec un minimum d'effort. Voici 5 raisons pour lesquelles je pense qu'actuellement c'est le meilleur framework disponible.

## Une grille CSS simple

Foundation possède le meilleur système de grille responsive disponible. Construit avec une priorité au mobile il est très facile de faire évoluer sa mise en page sur les tablettes, pour terminer sur des écrans. D'expérience je conseille de diviser son écran en 12 colonnes (Car 3 x 4 = 12). Ce système permet de mettre en place presque n'importe quel type de design.

~~~ html
    <div class="row">
      <div class="small-6 medium-4 large-2"></div>
    </div>
~~~

## Développement rapide

Foundation embarque un nombre impressionnant de composants CSS et JavaScripts, réutilisables et commun à n'importe quel projet web. Pour commencer vous pouvez simplement utiliser le même HTML que celui présent dans la documentation. Si vous souhaitez plus de contrôle au niveau du style il est aussi très facile de personnaliser le framework et d'étendre ses capacités en faisant [appel aux mixin Sass](/blog/grille-semantique.html).

## Compatibilité des navigateurs

Foudadation est compatible avec tous les navigateurs web modernes. Bien sûr si vous devez mettre en place un site qui ne respecte pas les standards HTML5, il est toujours possible de surcharger -inutilement de plugins votre page avec [HTML5Shiv](https://github.com/aFarkas/html5shiv) et [Respond.js](https://github.com/scottjehl/Respond). Cela vous aidera à supporter un moment les anciens navigateurs.

Si votre employeur / client souhaite un site internet compatible avec internet explorer 7, il est toujours possible de lui expliquer que :

> Il est plus productif, à long terme, de construire l'avenir plutôt que de corriger les erreurs du passé.

## Customisation et évolution

Foundation offre ne nombreuses façon de personnaliser son style par défaut.

### Intégrateur CSS

Vous pouvez [télécharger directement un fichier CSS](http://foundation.zurb.com/develop/download.html) personnalisé avec vos différentes couleurs et composants.
Cette méthode permet d'écraser les styles et le comportement par défaut du JavaScript. Le principal problème est que vous perdez les nombreuses corrections mineures de bugs.

### Développeur front-end

Si vous maîtrisez l'utilisation de [bower](http://bower.io/) avec [nodeJS](http://nodejs.org/), et que vous utilisez un préprocesseur comme Sass vous pourrez utiliser toute la puissance de ce framework. En modifiant le fichier `_settings.scss` il est facile et rapide de personnaliser le design. Cette méthode permet de mettre à jour facilement le framework et ses dépendances dans votre fichier `bower.json`.

### Guru de Foundation

Vous connaissez déjà par coeur le framework, vous pouvez cloner le projet [foundation-boilerplate](https://github.com/flexbox/foundation-boilerplate) pour directement exploiter les bonnes mixins et contruire rapidement votre prototype.

## Open Source

Foundation est un projet open source, hébergé sur GitHub. Il est publié sous la licence MIT. C'est une des meilleures raisons pour lesquelles j'utilise quotidiennement Foundation. Vous êtes libres de l'utiliser comme bon vous semble en le changeant complètement ou simplement pour expérimenter une nouvelle technologie. De plus vous n'aurez pas à lire d'obscures conditions d'utilisations et n'avez aucun risque à l'utiliser sur les projets de vos clients.

## Vous souhaitez apprendre Foundation ?

La première étape conciste [à lire la documentation](http://foundation.zurb.com/docs/). Ensuite pour tester rapidement une mise en page vous pouvez [télécharger un boilerplate](https://github.com/flexbox/foundation-boilerplate/archive/gh-pages.zip). Pour finir je construit presque [tous mes projets](http://davidl.fr/projects.html) avec une base plus ou moins important de composants issus du framework. N'hésitez pas à aller hacker mon code source.

J'espère que vous avez trouvé cet article interessant et qu'il vous a convaincu d'essayer [Foundation](http://foundation.zurb.com/) pour vos futurs projets.
