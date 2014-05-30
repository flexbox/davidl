---
date: 2014-05-21
slug: site-obese
title: Astuces et bonnes pratiques pour la performance d'un site internet
page_title: Votre site web est obèse
changefreq: monthly
priority: 0.8
---


Certains d'entre vous ont sûrement connu l'époque du 56k. En ce temps là, charger une seule image sur internet pouvait demander plusieures minutes. Puis est arrivé l'ADSL et le haut débit qui ont démultiplié la vitesse de chargement. Bizarrement j'ai l'impression que nous passons toujours autant de temps à attendre le chargement d'une page web.

![Site internet obèse](https://farm6.staticflickr.com/5519/14256724243_9a829c4dd1_o.jpg)

De nos jours les sites sont de plus en plus complexes, embarquent de plus en plus de contenu. Grâce à la fibre optique ces derniers se chargent de plus en plus vite... En théorie car paradoxalement le web évolue vite, mais les sites web sont toujours aussi long à charger.

Il existe beaucoup d'options pour améliorer la performance de votre site internet. Pour vous aider à décider comment mettre en place ces solutions j'ai découpé cet article en 3 parties :

- Geek
- Guru
- Hacker

Chaque technique peut être déployée partiellement, en partie ou pas du tout. Chaque palier peut vous aider lors du développement de votre site suivant son niveau de complexité.

## Geek de la performance

Les 2 choses les plus simples à mettre en place rapidement sont la compression des fichiers et les en-têtes de cache. Ces techniques indispensables vous aiderons à :

- Réduire le poids des pages.
- Réduire le nombre de requêtes http, et donc la latence.

Puisque ces modifications ont lieu côté serveur, elles amélioreront immédiatement les performances de chaque page.

### Activer `mod_deflate` pour la compression `Gzip` de vos fichiers

De la même manière que nous zippons nos pièces jointes envoyées par email, votre serveur peut compresser les fichiers avant de les envoyer au navigateur. Pour __préserver la bande passante__ de vos utilisateurs mobiles, il est capital de réduire le plus possible la taille de votre site.

La librairie de compression pour Apache `mod_deflate` fonctionne uniquement sur des fichiers textes comme `HTML`, `CSS` et `JavaScript`. Les images `.jpg`, `.gif` ou `.png` sont compressées à différents niveaux, comme expliqué plus loin dans cet article, cette librairie n'ont donc aucun effet sur elles.

La mise en place demande 3 étapes :

1. Aller sur le projet [GitHub HTML5Boilerplate](https://github.com/h5bp/html5-boilerplate/blob/master/.htaccess#L499).
2. Copier le contenu `mod_deflate` du fichier `.htaccess`,
3. et le coller sur votre serveur.

### Mettre les ressources en cache

Si votre site est correctement architecturé, les mises à jours des ressources `CSS`, `JavaScript` et images sont moins fréquentes que le contenu. Dans un contexte mobile nous pouvons télécharger ces ressources statiques en une seule fois, et les mettre en cache sur l'appareil.

- Moins de requêtes http seront effectuées.
- Le contenu total à télécharger est diminué.

De cette façon, pour les futures visites, l'expérience de navigation sera incroyablement plus rapide et donc meilleure. L'astuce consiste à utiliser les entêtes d'expiration avec une date adaptée.

Il n’est pas conseillé de spécifier une durée inférieure à 1 mois et supérieure à un an. Si vous changez régulièrement une ressource vous pouvez :

- Spécifier et identifier cette ressource dans votre fichier `.htaccess`.
- Modifier le nom du fichier, qui est une bien meilleure solution car cela donnera naissance à une nouvelle requête http.

La mise en place demande 3 étapes :

1. Aller sur le projet [GitHub HTML5Boilerplate](https://github.com/h5bp/html5-boilerplate/blob/master/.htaccess#L563).
2. Copier le fichier `.htaccess`, pour la partie `mod_expires`,
3. et le coller sur votre serveur.

La plus grande limite de cette technique est la taille du cache des appareils mobiles. Un site web simple doit peser en moyenne 2Mo, le cache des appareils Android 2.x est limité à 6Mo, les appareils iOS sont plus avantagés avec un cache de 50Mo.

Pour contourner ce problème nous pouvons mettre en place une fonctionnalité en utilisant l'API HTML5 `localStorage` mais pour cela il faut être guru de la performance.

## Hacker de la performance

La compression et la mise en cache des fichiers sont de bonnes pratiques mais ce n'est que la base. Pour avoir un __réel impact sur la performance__ et offrir une expérience optimisée à vos utilisateurs vous allez devoir travailler plus. Les techniques de cette partie permettent de :

- Réduire le poids de vos pages.
- Réduire le nombre de requêtes à votre serveur, et donc la latence.
- Afficher du contenu à la demande.

Les techniques de minification et de concaténation devraient êtres mises en places lors de déploiement dans des environnements de test / production. Elles ne sont pas vraiment utiles si vos mises à jours sont fréquentes et multiples.

### Mettre vos fichiers au régime.

Minifier votre code source signifie simplement supprimer les octets inutiles d'un fichier (espaces, indentation et saut de ligne). Cette syntaxe est indispensable pour qu'un humain comprenne, mais elle n'est pas nécessaire pour l'éxécution du code sur une machine.

>Le code source est écrit pour les humain, pas pour les machines
>
><cite>@drublic</cite>

Avec la minification le navigateur télécharge moins de contenu, le rendu de votre page est donc plus rapide.

Si vous utilisez une librairie populaire comme jQuery vous utilisez certainement la version `.min`. La minification n'est pas seulement disponible pour le JavaScript, mais peut être appliquée à n'importe quelle type de ressource texte. L'`asset` principale qui doit être minifiée dans un code de production est le CSS. La plus vieille solution pour réaliser cette opération est [YUI Compressor](http://yui.github.io/yuicompressor/) de yahoo! Si vous êtes un [développeur front-end éclairé](http://davidl.fr/manifesto.html) essayez de chercher du côté des tâches grunt pour automatiser cette opération.

### La concaténation : un fichier pour les gouverner tous

Si le père de la performance est la minification, la concaténation des fichiers est sans doute la mère. Par exemple : au lieu de télécharger 10 fichiers JavaScripts qui demandent 10 requêtes http au serveur, les utilisateurs devraient télécharger seulement 4 fichiers qui représentent la combinaison de ces 10 fichiers.

Après les `mod_expires`, la concaténation est la meilleure option à mettre en place pour fluidifier la navigation sur mobile. Malheureusement la pratique est plus complexe que la théorie.

En moyenne un navigateur peut télécharger 6 fichiers en parallèle. Comme la minification YUI est un bon outil pour concaténer vos fichiers. Dans un environement ruby c'est l'`asset pipeline` qui se charge du boulot, en php c'est [quickconcat](https://github.com/filamentgroup/quickconcat). Vous pouvez aussi [construire votre propre asset pipeline avec gulp](http://blog.carbonfive.com/2014/05/05/roll-your-own-asset-pipeline-with-gulp/)

### Optimisation des images

Les images sont les éléments qui prennent le plus de place. En moyenne, c'est plus de 60% dans le poids d'une page. C'est à chacun, développeur comme designer, d'optimiser le poids des images. Le processus se fait en plusieurs étapes :

#### 1. Choisir le format adapté

`.png` pour les aplats de couleurs, `.jpg` pour les photographies. N'enregistrez __jamais__ vos images dans la qualité la plus haute mais essayez de trouver le bon compromis entre qualité / poids.

![Enregistrement .jpg progressif avec Photoshop](https://farm3.staticflickr.com/2901/14256724273_85583d2db6_o.png)

_Avec Photoshop `fichier` > `enregistrer pour le web`_

N'oubliez pas de cocher la case __jpg progressif__, cette technique utilisée pour les débits lents à l'époque du 56k prends tout son sens aujourd'hui dans un [contexte de navigation mobile](http://calendar.perfplanet.com/2012/progressive-jpegs-a-new-best-practice/).

#### 2. Supprimer les informations inutiles

Pour gagner quelques octets supplémentaires il est possible de supprimer d'autres informations encapsulées dans les images (métadonnées, informations de claques, ...) Cette opération peut se faire très facilement avec des logiciels comme :

- [imgOptim](http://imageoptim.com/) pour macOS
- [pngGauntlet](http://pnggauntlet.com/) pour windows

Si vous souhaitez en savoir plus sur l'optimisation des images, je vous invite chaudement à lire les articles de Serguey Chikuyonok's sur l'optimisation intelligente des images `.png` et `.jpg`

- [Optimiser ses images png](http://www.smashingmagazine.com/2009/07/15/clever-png-optimization-techniques/)
- [Optimiser ses fichiers jpg](http://www.smashingmagazine.com/2009/07/01/clever-jpeg-optimization-techniques/)

#### 3. Automatiser la tâche

Avec la puissance de node et [ImageOptim-CLI](https://github.com/JamieMason/ImageOptim-CLI) il est possible d’automatiser tout ce processus pour vous permettre de gagner un temps considérable.

    npm install -g imageoptim-cli

#### 4. Lazy Loading d'images

Comme me l'a fait remarqué [@gaelmetais](https://twitter.com/gaelmetais), expert en performance web, la solution qui donne les meilleurs résultats est le lazy loading d'images.
Cette solution [JavaScript disponible sur github](https://github.com/vvo/lazyload) permet de ne charger que les images visible du `viewport`. Cela évite de télécharger inutilement des images qui ne sont probablement jamais vues par les visiteurs.

### Reporter le chargement du contenu

Toutes les techniques précédentes, ormis la concaténation, vous aiderons à réduire la taille de vos pages. Une autre approche est de prioriser le chargement de votre contenu.

La performance n'augmentera pas, c'est le sentiment de vitesse que ressentira l'utilisateur qui doit être perceptible. Le moyen le plus simple de retarder le chargement d'un fichier JavaScript en utilisant l'attribut HTML5 `defer` ou `async`.

    <script defer src="application.js"></script>
    <script async src="application.js"></script>

D'un point de vue latence et performance ces attributs se comportent de façon similaire. Ils demandent au navigateur d'éxécuter les scripts seulement après avoir téléchargé l'intégralité du contenu de la page.

Vous devez vous poser la question : quel priorité dois-je utiliser ?

#### `defer` charge les scripts dans l'ordre d'appel

Supposons que vous chargez la librairie jQuery ainsi qu'un autre fichier de plug-in. Ces 2 fichiers sont dépendant car le socond script doit être chargé _après_ le premier.

#### `async` le chargement de l'ordre des fichiers n'a aucune importance

## Guru de la performance

Les geeks et les hackers de la performance utilisent des techniques d'optimisation traditionnelles pour la construction de sites internet, bien avant l'apparition du responsive design.

Les techniques de guru peuvent êtres mises en place pour des applications web HTML5 avec un focus pour les navigateurs mobiles. Elles permettent de :

- Réduire le poids de vos pages.
- Réduire le nombre de requêtes http, et donc la latence.
- Optimiser le chargement du contenu pour être utilisé plus rapidement.

<div class="alert-box alert">
Le principal désavantage est le support des navigateurs
</div>

Dans certains cas il ne sera pas possible de garantir le résultat sur de vieux navigateurs. N'hésitez pas à vérifier les différentes fonctionnalités sur le site [caniuse](http://caniuse.com).

### Ordre des sources

Curieusement organiser correctement votre CSS et vos fichiers JavaScript peut avoir un large impact sur le ressenti de la rapidité de chargement.

> JavaScript bloque le chargement de votre contenu
>
> <cite>[Manifeste d'un développeur front-end](/manifesto.html)</cite>

Voici un très mauvais exemple que je rencontre quotidiennement :

    <head>
      <script src="jquery.js"></script>
      <link rel="stylesheet" href="small.css">
      <link rel="stylesheet" href="big.css">
    </head>
    ...

Vous ne devez __JAMAIS__ faire cela. Le JavaScript bloque téléchargement des autres ressources en parallèle comme les images. Sauf exception votre JavaScript doit toujours être appelé uniquement avant la fin du `</body>`

### `localStorage` comme cache navigateur

`localStorage` est une spécification du W3C. Cette technologie est comparable aux cookies utilisés par les développeurs pour stocker des informations de type clef / valeur. Elles sont sauvegardées même si le navigateur est fermé. Contrairement aux cookies les informations associées au `localStorage` ne sont jamais renvoyées au serveur depuis le client.

Voici un exemple assez basique : utiliser `localStorage` pour mettre en cache jQuery

<script src="https://gist.github.com/flexbox/1832f48d92f1bee693ce.js"></script>

1. Vérifier si le fichier existe
2. Charger le contenu en AJAX
3. Insérer le contenu dans la page avec `js-jquery`

Il faut noter que `localStorage` ne fonctionne qu'avec des `string`. Si vous souhaiter utiliser cette méthode pour stocker des images, vous devez les parser en base64 d'abord.

`localStorage` est une solution assez facile à mettre en place pour des choses basiques. Si vous souhaitez aller plus loin je vous conseille d'essayer [basket.js](https://github.com/addyosmani/basket.js) maintenu par Addy Osmani qui permet de prioriser le chargement du JavaScript en cache.

### Lazy loading JavaScript

Si votre application web / site internet embarque beaucoups de JavaScript il peut être intéressant de d'utiliser des techniques de _lazy loading_ pour réduire le temps de démarrage.

Quand un navigateur télécharge du JavaScript, il le __parcours et l'exécute__. Comme expliqué précédemment, cela bloque le rendu de la page jusqu'à ce que le processus soit terminé. Dans la plupart des cas, vous n'avez sûrement pas besoin que tout votre JavaScript soit parcouru et exécuté au chargement de la page. Cela porte préjudice à la performance sans raison valable.

Il existe 2 techniques pour corriger le problème :

1. Modifier le script précédemment utilisé pour `localStorage` en utilisant JavaScript pour insérer du JavaScript.
2. Utiliser `XmlHttpRequest` pour __télécharger et évaluer__ le code. Le principal problème est que si l'utilisateur essaye d'utiliser une fonctionnalité qui n'est pas encore téléchargé cela risque de "casser" la mise en page.

L'équipe qui s'occupe de Gmail a trouvé une solution pour que le code ne soit pas exécuté : [commenter le code](http://googlecode.blogspot.de/2009/09/gmail-for-mobile-html5-series-reducing.html).

Le navigateur télécharge et évalue l'intégralité de votre JavaScript, mais comme ce dernier est commenté, il n'est pas exécuté. Cette méthode libère du CPU pour effectuer d'autres opérations. Quand l'utilisateur a besoin d'une fonctionnalité, une partie du code est décommentée et évaluée. Voici un exemple :

<script src="https://gist.github.com/flexbox/c244d7bebd646582fcfe.js"></script>

Cette technique est complexe à mettre en place car votre architecture JavaScript doit être irréprochable.

### Le cas des boutons sociaux

Fin 2011, le magazine Allemand Heise a publié un nouvel ensemble d'[icônes pour les réseau sociaux](http://www.heise.de/extras/socialshareprivacy/) très connu. La différence ? Il faut 2 clics pour "aimer", "tweeter" ou ajouter "+1".

De base les images des icones sont chargées. Si l'utilisateur souhaite partager, alors les widgets de partage sont téléchargés. Cette solution présente de nombreux avantages non négligeables.

1. Les utilisateurs ne sont pas constamment trackés. Les widgets ne sont activés que si l'utilisateur le demande et non par défaut.
2. Extrèmement efficace avec du responsive design.

![Image zurb webcitation](https://farm3.staticflickr.com/2898/14050189350_521f32f74f_o.png)
_[Pourquoi les boutons sociaux tuent votre site web ?](http://zurb.com/article/883/small-painful-buttons-why-social-media-bu)_

De plus vous ne téléchargez que ce qui est nécessaire. Si un utilisateur n'est actif que sur twitter, l'obliger à télécharger le widget facebook n'a pas de sens, et cela lui évite un temps de latence en supprimant les requêtes http inutiles.

### Utiliser des sprites pour concaténer vos images

Les fichiers CSS et JavaScript ne sont pas les seuls à pouvoir êtres combinés pour réduire le nombre de requêtes. Utilisés généralement pour des icones ou de petites illustrations, la technique des sprites CSS est une bonne solution.

Essayez de regrouper des images partageant la même palette  de couleur. Si ce n'est pas le cas la taille de votre fichier sera anormalement élevée car il sera sauvegardé au format PNG `true color` au lieu du classique PNG 256 couleurs. Pour éviter une requête avec des images de petites tailles, vous pouvez aussi encoder le résultat obtenu en base64 pour optimiser encore plus la taille de votre fichier (à prendre avec précaution car cela peut augementer la taille jusqu'à 37%).

- [base64](http://www.base64-image.de/) pour encoder vos images
- Un outil CSS : [SpriteMe](http://spriteme.org/)

### Éviter le calcul navigateur aka browser reflow

Une fonctionnalité peu connue des développeurs en terme de performance est la construction d'une page web dans une fenêtre de navigateur. Des problèmes de performance apparaissent dès que l'on essaye de trop modifier dynamiquement la mise en page. Cela force le navigateur à recalculer la place des objets tout en chargeant la page, ce qui ralenti le rendu de la page.

![CSS image reflow](https://farm6.staticflickr.com/5524/14234276822_25ce57d1cd_o.gif)

La chose la plus importante pour limiter le nombre de "reflow" est de limiter la taille du DOM et le nombre de sélecteurs CSS le plus possible. Moins le DOM contient d'éléments, moins d'objets doivent êtres calculés et positionnés pendant la construction de la page et plus elle se chargera vite. Je ne le répéterai jamais assez :

> JavaScript est pour le comportement, CSS pour le style.

C'est pourquoi vous ne devez __JAMAIS__ modifier vos éléments avec du JavaScript.

<div class="alert-box alert">
<i class="fa fa-thumbs-o-down"></i> Mauvaise solution
</div>

    var el = document.getElementById('js-box');
    el.style.color = "#fff";
    el.style.backgroundColor = "#000";
    el.style.borderColor = "#fc0";

Chaque déclaration provoque un calcul. Dans notre cas il y a 3 reflow.

<div class="alert-box success">
<i class="fa fa-thumbs-o-up"></i> Bonne solution
</div>

    var el = document.getElementById('js-box');
    el.className = "m-box";

1 seul reflow. Le style est déclaré à sa place : dans une feuille de style et vous n'aurez pas besoin d'utiliser `!important` si votre élément change.

Les calculs sont aussi impactés par l'ajout d'élements au DOM.

![Border image reflow](https://farm3.staticflickr.com/2922/14234595522_c68157e017_o.jpg)
_Il y a le bon :hover et le mauvais :hover_

Pour aller plus loin et comprendre le fonctionnement d'un navigateur web je vous invite à regarder l'excellente présentation de [Paul Rouget développeur chez Mozilla](https://www.youtube.com/watch?v=enKJMUArlV4). Ou encore le projet [css-reflow-tracer](https://github.com/janjongboom/css-reflow-tracer).

### Sur mobile toucher est meilleur que cliquer

L'impression de rapidité et la performance sont 2 choses différentes.

Connaissez-vous le célèbre délai des 300ms implémenté par tous les appareils mobiles ? Ce délai permet aux utilisateurs d'avoir le temps d'effectuer un double-tap. Dans certains cas il n'est pas nécessaire et pour retirer ce délai il existe des solutions :

- [Comment créer des boutons rapides](https://developers.google.com/mobile/articles/fast_buttons) ?
- Le polyfill [Fastclic.js](https://github.com/ftlabs/fastclick)

### Aller à l'essentiel et supprimer les énormes frameworks

JavaScript n'est pas le seul responsable dans l'explosion du poids des pages web, notamment depuis que l'internet se [bootstrapize](http://getbootstrap.com). Le framework bootsrap de twitter est une excellente solution mais utilisez ses composants avec partimonie. Préférez lui une solution plus légère comme Foundation ou encore KNACSS. Vous pouvez aussi envisager de construire votre propre grille avec [Suzy](http://susy.oddbird.net/) et créer vos propres composants.

Il est facile d'inclure dans votre projet des librairies comme jQuery ou mootools, et d'y ajouter une myriade de plugins. En tant que développeurs nous devons nous poser la question de ce qui est vraiment utile. Si vous utiliser jQuery seulement comme outil de sélection `$('element')` regardez du coté de [Zest](https://github.com/chjj/zest) ou [qwery](https://github.com/ded/qwery). Ces micro framework JavaScript sont spécialement crées pour ça et leur taille est d'environ 11ko comparé à plus de 90ko.

Comme expliqué précédemment, quand un navigateur télécharge jQuery, il doit parcourir le fichier. Cela demande du temps et bloque le rendu de la page. Soyez critique quand vous analysez vos besoins en JavaScript. 11ko c'est peut-être 11ko de trop si la seule chose dont vous avez besoin est `document.getElementByTagName('foo')`.

## La performance comme budget

Généralement la performance ne fait fait l'objet d'un budget pour un projet web. Mais tout comme les créateurs de jeux vidéos qui ont une limite dans le nombre de polygones affichés à l'écran, les développeurs devraient imposer une limite de taille pour alléger le poids des sites internets.

Si votre client est résistant à se soucier de la performance, voici une petite astuce qui fonctionne :

1. Sélectionner deux sites (au hasard le site web du client ainsi qu’un concurrent)
2. préchargez / precachez le site du concurrent en dur dans le cache (avec `localStorage`)
3. et l'exécuter en comparant le site internet du client non mise en cache.

Personne ne veut attendre et les gens sont impatient, à partir du moment où le client comprendra la différence, il voudra un site web rapide, et investira pour avoir une bonne performance.

C'est culotté, mais cette méthode permet de démontrer l'importance de la performance. Je ne pense pas que cette façon de faire soit différente des publicicités télévisées que l'on voit à longeur de journée.

Pour aller plus loin, vous pouver créez un graphique comparatif du temps de chargement contre le trafic en temps réel, le client verra la corrélation entre les deux. De nombreuses décisions devront être réexaminées dans le but de performance, je crois que c'est une très, très bonne chose !


