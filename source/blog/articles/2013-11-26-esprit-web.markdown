---
date: 2013-11-26 17:37:06+00:00
slug: esprit-web
title: Internet expliqué à ma grand mère
page_title: L'esprit du web

---

Qu'est ce que le web ?

A-t-il une âme ?

Le __web__ est intangible, indéfinissable, c'est simplement une suite de données, de signaux, d'électrons.

__Internet__ est solide, c'est une suite de routeurs, de serveurs, de câbles, ... ce n'est pas un nuage !

Le web est différent. C'est un état d'esprit, une façon de penser. Chacun possède sa propre définition.

## Qu'est ce que le web ?

Si l'on devait résumer en 3 points, le web est composé de :

1. Fichiers
2. Adresses URL
3. Protocole HTTP

Ce n'est pas très romantique mais c'est la définition la plus logique.

### HTTP

Ce protocole définit les verbes sur le web.
L'inventeur du web Tim bers Lee en a défini 4 principaux :

* `GET` pour chercher des données, des ressources
* `POST` pour créer de nouveaux fichiers
* `PUT` pour éditer / remplacer des fichiers
* `DELETE` pour supprimer


C'est ce qu'a imaginé Tim Bers Lee en tant que media de lecture / écriture.
Ce média n'est pas simplement associé à la consommation, mais aussi est surtout à la création.
D'usage, chez les développeurs les 2 verbes utilisés sont `GET` et `POST`.

Étonnamment de nombreux développeurs ne connaissent pas forcément les différences entre ces 2 verbes.

* `GET` doit être utilisé pour les requêtes sécurisées
* `POST` pour les autres transactions

J'ai une anecdote à ce sujet :

Les développeurs de basecamp ont appris cette leçon à leur dépends : de simples liens étaient utilisés pour effectuer une action de suppression.
Selon eux ils étaient dans leurs droits puisqu'il y a une étape d'identification à la connexion au service.
Certains clients de leur application avaient installé la google accelerator toolbar. Pour accélérer la navigation ce programme précharge les liens en fond de tâche.


A la connexion tous les fichiers de ses clients sont supprimés puisque tous les liens sont pré-chargés.
Les créateurs de basecamp se sont énervés contre Google pour avoir sorti une telle toolbar. Mais à la base c'était de leur faute : une transaction de suppression doit être sécurisée il ne faut **jamais** utiliser de liens pour ça `<a href="#"> delete `




La solution est d'utiliser ce qui a été conçu pour un tel usage :

    <form method="POST">
        <input type="hidden" name="delete" value="id">
        <button>delete</button>
    </form></code>


### Le cyber espace

Pendant des années, les développeurs et les designers web sont tombés d'accord : 1 site web a une taille fixe et doit être consulté depuis un ordinateur. Mais par sa définition un site web est quelque chose  de complètement différent :
C'est une suite de fichiers HTML, CSS et javascript.

![This is the web par Brad Frost](http://davidleuliette.com/wordPress/wp-content/uploads/2013/11/this-is-the-web-300x223.png)


Pendant des années nous avons négligé les aspects fondamentaux du web :


* Capacités du navigateur
* Vitesse du site web
* Poids des pages
* Vitesse du réseau


Je pense que donner une taille fixe à un site internet est comparable à une hallucination collective. Cette "norme" n'a été fixée simplement parce que les designer souhaitent le contrôle de leur expérience.


Prenons l'évolution des tailles :

1. 640x480
2. 800x600
3. 1024x768

Pour garder le contrôle l'industrie s'est mis d'accord pour 960px.
Mais le contrôle ne fait pas parti de l'essence du web.
Cette notion n'est pas nouvelle elle existe depuis 2000 avec l'article de [A list Appart - a Dao of web design](http://alistapart.com/article/dao) qui explique une nouvelle façon de concevoir des pages web.


Avec les nouvelles tendances comme le responsive web design il est grand temps d'abandonner le contrôle et d'embrasser la flexibilité.


Ces pratiques ont pour génèse les outils utilisés pour créer des sites web. Si vous utilisez photoshop, la première chose que vous allez faire est de fixer une taille. Cette méthode ne sera jamais en adéquation avec la flexibilité du web.
Il faut donc utiliser de nouveaux outils et créer de nouvelles méthodes de travail.


## Concevoir un système


> Il ne faut pas coder des pages en CSS.
> Vous devez coder pour le système.
>
> Jonathan Snook


J'ai récemment publié l'intégralité des bonnes pratiques que j'utilise quotidiennement sur [guidecss.fr](http://guidecss.fr/)




#### Moodboard



Utilisé dans le milieu de la mode depuis des années, cette méthode peut être utilisé dans l'industrie du web pour créer une atmosphère à notre site.


#### Guide des styles

Une des premières choses à créer pour toute création de site web et un patron de conception regroupant tous les modules de votre site web.
Cette approche peut être comparé aux test unitaires réalisés en programmation.
Ce guide regroupe tous les éléments d'interface de votre site et permettra à votre équipe de travailler efficacement.
Le guide des styles de la [fondation Mozilla](http://www.mozilla.org/en-US/styleguide/websites/sandstone/) est un bon exemple qui permet aux milliers de contributeurs d'avoir partout une version à jour des éléments de design.


### Le design adaptatif (aka responsive webdesign)

La première chose à intégrer quand vous utilisez / créez un design adaptatif est d'oublier le contrôle que vous avez sur le rendu de votre site. Vous ne pourrez jamais savoir avec certitude avec quel appareil, navigateur ou même la capacité de connexion utilisé pour accéder à votre contenu.


> Les media queries peuvent être utilisées pour faire plus que hacker des mises en page cassées : avec une bonne planification, nous pouvons commencer à chorégraphier notre contenu proportionnellement à la taille d'écran, au service de la meilleure expérience possible à n'importe quelle largeur.
>
> Trent walton

Le design adaptatif comparé à l'esprit du web est une hérésie. Il n'existe pas de version mobile, ou de version de bureau de votre site. C'est simplement une version web de votre contenu.


Prenons comme exemple mon site web sans le style CSS.
Le contenu est sémantique, mon site est donc, par défaut, adaptatif puisque le HTML est bien architecturé.
L'objectif du design adaptatif est donc de conserver cette fluidité et non de fixer des tailles.


### L'amélioration progressive


L'amélioration progressive consiste à prendre le plus petit dénominateur commun et d'étendre les différentes fonctionnalités par la suite.

Si vous commencez par de bases saines, avec une bonne structure HTML, chaque ajout de javascript et de CSS conservera son callback.


Utiliser intelligemment du javascript avec une bibliothèque comme modernizr vous permettra de donner aux nouveaux appareils les dernières fonctionnalités. Sans pour autant négliger les anciens en les privant de votre contenu.
Vous conserverez un maximum d'indépendance vis à vis de la technologie. Mais pour cela il faut la respecter et l'utiliser dans son contexte :


* HTML pour la structure
* CSS pour la présentation
* Javascript pour le comportement

Vous pouvez utiliser l'amélioration progressive à chaque niveau.
Exemple avec HTML5 : la balise `<input type ="tel">` permet d'afficher directement le clavier avec des chiffres sur les smartphones. Les navigateurs qui ne comprennent pas cette balise utilisent `<input type="text">` par défaut.


__Exemple avec CSS3 :__

Pendant des années internet explorer ne supportait pas `border-radius` ce qui n'empêche pas les utilisateurs de naviguer sur le site. Les personnes utilisant un vrai navigateur moderne sont récompensé par une expérience améliorée. Si le navigateur ne comprend pas une règle elle est simplement ignorée.

__Exemple avec Javascript :__

Il faut faire plus attention car les scripts peuvent planter si ils font appel à des fonctions non-disponibles sur les navigateurs. La encore un simple test permet souvent de gérer le problème.


La réponse à la grande question sur le web : mon site doit-il s'afficher de la même façon sur chaque navigateur ? __NON__ !


> Il y a une différence entre le support et les optimisations
>
> Brad Frost

Quand vous testez votre site sur différents périphériques vous testez si cela fonctionne. Est ce que le site s'affiche de la même façon sur tous les différents appareils ? Bien sûr que non.




### Images


Nous avons un problème avec les images.

La balise HTML5 `picture` est encore loin d'être implémentée par les navigateurs.
Grâce à divers hack javascript vous pouvez mettre en place une stratégie de chargement.


1. Charger de petites images par défaut
2. Ne pas télécharger en double vos images basse et haute résolution




Voici une solution qui est la meilleure d'un point de vue performance tout en respectant l'expérience utilisateur.



![interchange_small](http://davidleuliette.com/wordPress/wp-content/uploads/2013/11/interchange_small.png)



image pour les appareils mobiles




Grâce aux `media-query` je demande à mon CSS d'augmenter la taille de l'image.



![interchange_large](http://davidleuliette.com/wordPress/wp-content/uploads/2013/11/interchange_large-300x99.png)



Dès que la page est chargée je demande au [javascript d'intervertir mes images](http://foundation.zurb.com/docs/components/interchange.html) et de charger la version HD.




### Performance

> C'est la chose la plus importante à faire pour un site web.
>
> Steve Souders - guru de la performance


La manière la plus efficace pour gagner en performance est de réduire le nombre de requêtes HTTP.
Vous devez vous poser régulièrement la question : pouvez vous combiner vos fichiers pour réduire leur nombre ?


#### Boutons sociaux


Chacun à son idée dessus mais je ne pense que de nombreuses personnes seront d'accord avec moi : les boutons sociaux donnent l'impression que vous êtes désespérés, de plus ces services bloquent le rendu de votre page, et par extension bloquent donc l'accès à votre contenu.

Je ne dis pas que ce sont de mauvaises choses, ce sont de bon outils mais il n'est pas nécessaire de les inclure dans tous vos projet, et de les charger tous. Lancez d'abord votre projet, il sera toujours possible de les inclure par la suite si vous en avez besoin.


#### CSS



Il existe beaucoup de techniques pour réduire le nombre de requêtes HTTP :

- sprites CSS
- encodage en base-64
- Les dégradés en CSS3
- `border-radius`



#### Le design d'URL


Les adresse url existent pour les humains.

Les machines utilisent les adresses ip pour taper à la bonne porte. C'est l'occasion d'en profiter pour concevoir une architecture logique.
Prenez l'exemple de github :


    github.com
    github.com/nom_utilisateur
    github.com/nom_utilisateur/repertoire
    github.com/nom_utilisateur/repertoire/problème
    github.com/nom_utilisateur/repertoire/problème/1



