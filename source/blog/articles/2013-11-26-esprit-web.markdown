---
date: 2013-11-26 17:37:06+00:00
slug: esprit-web
title: Différence entre internet et web
description:
page_title: Les internets <em>vs.</em> le web
page_emphasis: L’esprit du web expliqué à ma grand mère
changefreq: monthly
priority: 0.6
---

Qu’est ce que le web ?

A-t-il une âme ?

Le __web__ est intangible, indéfinissable, c’est simplement une suite de données, de signaux, d’électrons.

__Internet__ est solide, c’est une suite de routeurs, de serveurs, de câbles, ... __ce n’est pas un nuage__ !

Le web est différent. C’est un état d’esprit, une façon de penser. _Chacun possède sa propre définition_.

## Qu’est ce que le web ?

Si l’on devait résumer en 3 points, le web est composé de :

1. Protocole HTTP
2. Adresses URL
3. Fichiers

Ce n’est pas très romantique mais c’est la définition la plus logique.

### HTTP

Ce __protocole définit les verbes sur le web__.
L’inventeur du web Tim Berners-Lee en a défini 4 principaux :

* `GET` pour chercher des données, des ressources
* `POST` pour créer de nouveaux fichiers
* `PUT` pour éditer / remplacer des fichiers
* `DELETE` pour supprimer

![Photo de Tim Berners-Lee David Leuliette pour google image](https://lh3.googleusercontent.com/RPgH87y7m5H_t9KvtUEuLTWwbK1FCACNSI8zeWqPolH4rvwzOIoMwMVzzz7bJVI7bCnFV7NbHFFu_Zap-47eXqZFKOYfeBvQP2BUkt2RxljcG1QsnDlgWDQBsCA5Hx0jXyXdboq_uWhBjCCWTKGOIYl5-QO4MNJfS9fbDsBCynT7BBKg1D6YbwTSzAahDZYeIVoO0UAhQMmjDhCerp7S-4Vk6c1esglObzj5_B0qEBPEmcDO53AvqH-bXnITLYBGrIQaucZEXjO9m-TkZ_7biqOlWHnBJvgx7s4MSlcoByOA0BL8UeW5fm4BWYH-nJZVOo5ACnDNo0q7ryfa3YbG-kUAW-6jruOW-PicA7zNs5jnIm513vBSfOBPp_3SUdc0QAIxK2sVmGr4vQ-3lZkQxE8itGPxgp9uGwRr160s83vSvVFFdWshq0F2H2f67GhYOrraxF1fpNeMEChErtx2VV4-FDrvztXeqsW85l0tXDm6s69SrpspojLrDxhIww583BqCJVroivjcgfn_mePL7cdNaSUq9leUzxVnb25ysxc=w1266-h854-no)

C’est ce qu’a imaginé [Tim Bers Lee](https://fr.wikipedia.org/wiki/Tim_Berners-Lee) en tant que __media de lecture / écriture__.
Ce média n’est pas simplement associé à la consommation, mais aussi et _surtout à la création_.
D’usage, chez les développeurs les 2 verbes utilisés sont `GET` et `POST`.

Étonnamment de nombreux développeurs ne connaissent pas forcément les différences entre ces 2 verbes.

* `GET` doit être utilisé pour les requêtes sécurisées
* `POST` pour les autres transactions

J’ai une anecdote à ce sujet & les développeurs de basecamp ont appris cette leçon à leur dépends :

> De simples liens étaient utilisés pour effectuer une action de suppression.
Selon eux ils étaient dans leurs droits __puisqu’il y a une étape d’identification à la connexion__ au service.

> Certains de leurs clients avaient installé la google accelerator toolbar. Pour accélérer la navigation ce programme précharge les liens en fond de tâche.

> À la connexion __tous les fichiers de ses clients sont supprimés__ puisque tous les liens sont pré-chargés.
Les créateurs de basecamp se sont énervés contre Google pour avoir sorti une telle toolbar. Mais à la base c’était de leur faute : une __transaction de suppression doit être sécurisée__ il ne faut **jamais** utiliser de liens pour ça.

<div class="alert-box alert">
<i class="fa fa-thumbs-o-down"></i> Ça c’est non
</div>

~~~ html
  <a href="#"> Delete </a>
~~~

La solution est d’utiliser ce qui a été conçu pour un tel usage :

<div class="alert-box success">
<i class="fa fa-thumbs-o-up"></i> La c’est mieux !
</div>

~~~ html
    <form method="POST">
        <input type="hidden" name="delete" value="id">
        <button> Delete </button>
    </form>
~~~

### Le cyber espace

Pendant des années, les développeurs et les designers web sont tombés d’accord : 1 site web a une taille fixe et doit être consulté depuis un ordinateur. Mais par sa définition un site web est quelque chose  de complètement différent :
C’est une suite de fichiers HTML, CSS et JavaScript.

![This is the web par Brad Frost](blog/legacy/2013/11/this-is-the-web.png?raw=true)


Pendant des années nous avons négligé les aspects fondamentaux du web :


* Capacités du navigateur
* Vitesse du site web
* Poids des pages
* Vitesse du réseau


Je pense que __donner une taille fixe à un site internet est comparable à une hallucination collective__. Cette “norme” n’a été fixée que pour une raison : les designer souhaitent _le contrôle de leur expérience_.


Prenons l’évolution des tailles du dernier millénaire :

1. 640x480
2. 800x600
3. 1024x768

Pour garder le contrôle l’industrie s’est mis d’accord pour 960px.
Mais le contrôle ne fait pas parti de l’essence du web.
Cette notion n’est pas nouvelle, elle existe depuis 2000 avec l’article de [A list Appart - a Dao of web design](http://alistapart.com/article/dao) qui explique une nouvelle façon de concevoir des pages web.


Avec les nouvelles tendances comme le responsive web design il est grand temps d’__abandonner le contrôle & d’embrasser la flexibilité__.


Ces pratiques ont pour génèse les outils utilisés pour créer des sites web. Si vous utilisez Photoshop, la première chose que vous allez faire est de fixer une taille. Cette méthode ne sera jamais en adéquation avec la flexibilité du web.
Il faut donc utiliser de nouveaux outils et __créer de nouvelles méthodes de travail__.

<blockquote class="twitter-tweet" lang="fr"><p lang="en" dir="ltr">Photoshop is the best way to show your clients what their web design will never look like. <a href="https://twitter.com/stephenhay">@stephenhay</a> <a href="https://twitter.com/hashtag/mobx?src=hash">#mobx</a></p>&mdash; Brad Frost (@brad_frost) <a href="https://twitter.com/brad_frost/status/641907517300281344">10 Septembre 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Concevoir un système


> Il ne faut pas coder des pages en CSS.
> Vous devez coder pour le système.
>
> Jonathan Snook


J’ai récemment publié l’intégralité des bonnes pratiques que j’utilise quotidiennement sur [guidecss.fr](http://guidecss.fr/)




#### Moodboard



Utilisé dans le milieu de la mode depuis des années, cette méthode peut être utilisé dans l’industrie du web pour créer une atmosphère à notre site.


#### Guide des styles

Une des premières choses à créer pour toute création de site web et un patron de conception regroupant tous les modules de votre site web.
Cette approche peut être comparé aux test unitaires réalisés en programmation.
Ce guide regroupe tous les éléments d’interface de votre site et permettra à votre équipe de travailler efficacement.
Le guide des styles de la [fondation Mozilla](http://www.mozilla.org/en-US/styleguide/websites/sandstone/) est un bon exemple qui permet aux milliers de contributeurs d’avoir partout une version à jour des éléments de design.


### Le design adaptatif (aka responsive webdesign)

La première chose à intégrer quand vous utilisez / créez un design adaptatif est d’oublier le contrôle que vous avez sur le rendu de votre site. Vous ne pourrez jamais savoir avec certitude avec quel appareil, navigateur ou même la capacité de connexion utilisé pour accéder à votre contenu.


> Les media queries peuvent être utilisées pour faire plus que hacker des mises en page cassées : avec une bonne planification, nous pouvons commencer à __chorégraphier notre contenu__ proportionnellement à la taille d’écran, au service de la meilleure expérience possible à n’importe quelle largeur.
>
> Trent walton

Comparé à l’esprit du web, le responsive design est une hérésie. Il n’existe pas de version mobile, ou de version de bureau de votre site. C’est __simplement une version web de votre contenu__.


Prenons comme exemple mon site web sans le style CSS.
Le contenu est sémantique, mon site est donc, par défaut, adaptatif puisque le HTML est bien architecturé.
L’objectif du design adaptatif est donc de __conserver cette fluidité__ et non de fixer des tailles.


### L’amélioration progressive


L’amélioration progressive consiste à prendre le plus petit dénominateur commun et d’étendre les différentes fonctionnalités par la suite.

Si vous commencez par de bases saines, avec une bonne structure HTML, chaque ajout de dynamise JavaScript et de style CSS sublimera votre contenu.


Utiliser intelligemment du JavaScript avec une bibliothèque comme modernizr vous permettra de donner aux nouveaux appareils les dernières fonctionnalités. Sans pour autant négliger les anciens en les privant de votre contenu.
Vous conserverez un maximum d’indépendance vis à vis de la technologie. Mais pour cela il faut la respecter et l’utiliser dans son contexte :

- HTML pour la _structure_
- CSS pour la _présentation_
- JavaScript pour le _comportement_

Vous pouvez utiliser l’amélioration progressive à chaque niveau.
Exemple avec HTML5 : la balise `<input type ="tel">` permet d’afficher directement le clavier avec des chiffres sur les smartphones. Les navigateurs qui ne comprennent pas cette balise utilisent `<input type="text">` par défaut.

![image gif html5 input text tel](https://lh3.googleusercontent.com/jGRqlK2MHPmzLJOdZ2BNTN-DJW0zRIolgAxjnpAehQsd23oo97PhTP0qtuF0QtmyDmQFuBoLsuNMaxu21tJ2FLXBNYGatqjH3J5svI9w1-pnE6AcX4Dxzr98Jv_AAZKf-HBf4TssMjhlxj4X3PRRedbGmQPT-R7UYQPgL42IonrAr9lV0NI8hJi1i1wdQwaljKkt63kgfgFb1NDMXZI3Atz6eeUtcrMnJwFHWUh62U-2BvZLJAkS4gd6mE6CG8ywywayiQmRs4SdV4ljLLnl_Jz9OMaEBhOu5izC6w-i4LbqH8xFDUozVyuzLPLkA1ngsn9g1HR4-0ZBQ8Fsg4ABkO554piXJn7SfwGwO8m88yPJC1_awlLArOpy1j8eSpUGntAE0Fdg8ouma0mWPOhXExTQ3X5fa3saY1lnv7lC0PWR9k_V06LoPoJzr8Wec7d03gGO9TVXzfKtsfWXhmI3ol9oSrcRpFs8xor_rFvzZAtrO0wBKEJBCN0L_-FdlvMmgKAYsgsoeqg8rrXks86c35NknF_m6UDEpzlDpD8nORk=w314-h390-no)

__Exemple avec CSS3 :__

Pendant des années internet explorer ne supportait pas `border-radius` ce qui n’empêche pas les utilisateurs de naviguer sur le site. Les personnes utilisant un vrai navigateur moderne sont récompensé par une expérience améliorée. Si le navigateur ne comprend pas une règle elle est simplement ignorée.

__Exemple avec JavaScript :__

Il faut faire plus attention car les scripts peuvent planter si ils font appel à des fonctions non-disponibles sur les navigateurs. La encore un simple test permet souvent de gérer le problème.


La réponse à la grande question sur le web : mon site doit-il s’afficher de la même façon sur chaque navigateur ? __NON__ !


> Il y a une différence entre le support et les optimisations
>
> Brad Frost

Quand vous testez votre site sur différents périphériques vous testez si cela fonctionne. Est ce que le site s’affiche de la même façon sur tous les différents appareils ? Bien sûr que non.




### Images


Nous avons un problème avec les images.

La balise HTML5 `<picture>` est encore loin d’être implémentée par les navigateurs.
Grâce à divers hack JavaScript vous pouvez mettre en place une stratégie de chargement.


1. Charger de petites images par défaut
2. Ne pas télécharger en double vos images basse et haute résolution




Voici une solution qui est la meilleure d’un point de vue performance tout en respectant l’expérience utilisateur.



![interchange_small](blog/legacy/2013/11/interchange_small.png?raw=true)



_image pour les appareils mobiles_




Grâce aux `media-query` je demande à mon CSS d’augmenter la taille de l’image.



![interchange_large](blog/legacy/2013/11/interchange_large.png?raw=true)



Dès que la page est chargée je demande au [JavaScript d’intervertir mes images](http://foundation.zurb.com/docs/components/interchange.html) et de charger la version HD.




### Performance

> C’est __la chose la plus importante__ à faire pour un site web.
>
> Steve Souders - guru de la performance


La manière la plus efficace pour gagner en performance est de réduire le nombre de requêtes HTTP.
Vous devez vous poser régulièrement la question : pouvez vous combiner vos fichiers pour réduire leur nombre ?


#### Boutons sociaux


Chacun à son idée dessus mais je ne pense que de nombreuses personnes seront d’accord avec moi : les boutons sociaux donnent l’impression que vous êtes désespérés, de plus ces services __bloquent le rendu de votre page__, et par extension __bloquent donc l’accès à votre contenu__.

Je ne dis pas que ce sont de mauvaises choses, ce sont de bon outils mais il n’est pas nécessaire de les inclure dans tous vos projet, et de les charger tous. Lancez d’abord votre projet, il sera toujours possible de les inclure par la suite si vous en avez besoin.


#### CSS



Il existe beaucoup de techniques pour réduire le nombre de requêtes HTTP :

- sprites CSS
- encodage en base-64
- Les dégradés en CSS3
- `border-radius`



#### Le design d’URL


Les adresse url existent pour les humains.

Les machines utilisent les adresses ip pour taper à la bonne porte. C’est l’occasion d’en profiter pour concevoir une architecture logique.
Prenez l’exemple de github :

~~~
    github.com
    github.com/nom_utilisateur
    github.com/nom_utilisateur/repertoire
    github.com/nom_utilisateur/repertoire/problème
    github.com/nom_utilisateur/repertoire/problème/1
~~~


## Credentials

[Faces of Tim Berners-Lee](https://www.flickr.com/photos/rwfreund/2432692204/in/photolist-4GYbD3-jvvKgN-5U5E23-dSxaWM-67kEhC-vr1WSh-4GYe2y-67kDa3-4GY7pj-4GXV89-4GTUfT-4GY1uQ-4GU3hi-4GTJy6-4GXYr7-5ZcvkW-e1Yiuu-8aU2hh-4okZ6L-bA94mw-8aCSrW-58JM9i-58NWSE-5TS3Vg-4GTLnB-fzJLp-4TzfWn-58JMfR-9JubMq-9JrnPz-sm987-9JubSy-58NWRE-58JMiX-58NWW5-wkHJth-58JMhT-58NWYC-ayKxAj-4XPBbq-8csHfv-6xPbQ3-7kb9Ki-8aUwG2-aEF6YT-w6qvRf-9wqNwT-9wtMSw-9wrbgB-9wtPDo) par
Bob Freund


[This is the web](http://bradfrost.com/blog/post/this-is-the-web/) par Brad Frost
