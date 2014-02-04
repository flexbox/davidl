---
date: 2013-05-31 16:41:03+00:00
slug: base-design-adaptatif
title: les bases du webdesign responsive
page_title: Les principes fondamentaux du design adaptatif
changefreq: monthly
priority: 0.8
---

Dans cet article je vais essayer de faire une synthèse sur l'état des différentes bases à connaître absolument avant de créer un site internet compatible mobile. Peu à peu le design adaptatif se standardise autour de différents principes, ce qui permet de créer une véritable stratégie de pour votre contenu.

Un site internet développé en 2013 se doit d'intégrer de nouveaux principes :

  * Un système de grille fluide
  * Des medias flexibles
  * L'utilisation des `media queries` qui permettent d'afficher différents contextes de mise en page

> Le design adaptatif est simplement la partie émergé de l'iceberg
>
> Brad Frost


![L'iceberg du design adaptatif](blog/legacy/2013/05/iceberg.jpg?raw=true)

Il y a encore trop souvent beaucoup de sujets qui sont laissés de côté :

  * Performance
  * Stratégie du contenu
  * Les device API en HTML5
  * La détection des fonctionnalités

## Différents principes d'un design adaptatif

### L'ubiquité

Internet est une jungle où une pléthore d'appareils sont connectés, partout et en permanence. Ce processus s'accélère de plus en plus avec la miniaturisation des appareils informatiques.

Le super pouvoir du web est son pouvoir d'ubiquité. Il peut retrouver n'importe quelle information ce qui lui permet de donner aux utilisateurs ce qu'ils cherchent.


### Flexibilité

De base, le contenu d'une page HTML correctement construite s'affiche indépendamment du périphérique choisi.
Cette flexibilité à été perdue au fil des années où l'ensemble de l'industrie s'est mis d'accord pour fixer la taille des sites internet à 960 pixels.


### Performance

> 74% des utilisateurs abandonnent un site s'il n'est pas chargé en moins de 5 secondes.
>
> Luke Wroblewski : Monday numbers.


La performance doit être adoptée comme nouveau modèle de conception.

C'est très difficile de le faire comprendre à vos clients car ce n'est pas quelque chose de visible. Demander une semaine de développement pour un gain d'une seconde n'est en effet pas très vendeur. La solution serait peut être de pouvoir visualiser la performance d'un site.

Pour tester le temps d'affichage de votre site, je vous conseille d'utiliser ce service : http://mobitest.akamai.com


### Évolutions / Améliorations


La mise en page d'un site adaptatif n'est pas à prendre à la légère. Un bon système de grille est capital pour être à l'épreuve du temps.

L'analogie la plus courante est la comparaison d'une grille aux fondations d'une maison. Elles doivent être saines pour ne pas s'écrouler.

Un processus de conception basé sur l'amélioration progressive permet de faire la différence face à la maintenance et l'évolution d'un site.


### Dissection d'une page web

#### Logo

Sur internet la navigation est votre meilleur ami.

Le logo doit être présent quand vous en avez besoin, mais être assez compréhensif pour vous donner de l'espace. Il n'est pas obligatoire de l'afficher en permanence.

Une technique simple est d'inclure une fonction de `.toggle()` dans votre design pour afficher / masquer votre logo selon les besoins.


#### Champ de recherche


Puisque vous avez mis en place votre fonction `.toggle()` pour votre logo vous pouvez utiliser ce même principe pour votre champ de recherche.

![Afficher / masquer le champ de recherche](blog/legacy/2013/05/toggle-search.png?raw=true)

N'hésitez pas à utiliser la balise suivante pour une meilleure sémantique : `input type="search"`


#### Description produit

79% des personnes utilisent leur smartphone en magasin pour avoir des informations avant l'achat.
Une description efficace doit contenir les éléments suivants :

  * Expliquer clairement et simplement le produit
  * Combien il coûte
  * Les évaluations d'autres clients




#### Images produits


Généralement la présentation des produits est un carrousel d'images, mais en avez-vous vraiment besoin ?
Dans un contexte de navigation mobile voici les bonnes pratiques à suivre :

  * Chargez seulement ce dont vous avez besoin
  * Soyez explicite pour la navigation
  * Le support tactile est une fonctionnalité à considérer comme une amélioration
  * D'autres informations existent...

![Un carrousel tactile](blog/legacy/2013/05/side-content.png?raw=true)

Afficher une image coupée facilite la compréhension du toucher-glisser.


#### Formulaires


Sur les appareils mobiles il est temps de tirer parti des fonctionnalités HTML5.
`input type="number" pattern="[0-9]"` Permet d'avoir une expérience utilisateur de qualité avec un clavier qui affichera seulement des nombres.


#### Boutons de partage


Chacun à son opinion dessus.

  * Les systèmes d'exploitation mobiles ont TOUS des fonctionnalités de partage sociaux directement intégré au système.
  * Les utilisateurs sont déjà authentifiés sur la couche système.
  * L'agence web ZURB à réalisé une étude : Charger Facebook, Twitter et Google+ demandera 10 requêtes HTTP pour un total de 250 Ko de bande passante.
  * Il faut ajouter à cela le deuxième système d'authentification des utilisateurs sur leur navigateur de mobile.

Vous souhaitez toujours inclure un tel système à votre site ?

#### Le contexte

Le contexte de navigation a changé. Il est passé d'une expérience confortable sur un ordinateur de bureau à un accès rapide sur un mobile.

Vous devez vous poser des questions :

  * Pourquoi mon site est visité depuis un smartphone ?
  * Comment puis-je améliorer l'expérience utilisateur ?
  * Pourquoi quelqu'un visiterait mon site depuis sa console de jeu ? (Internet explorer est disponible sur xBox)
  * Qu'est ce qui différencie un visiteur tablette d'un visiteur ordinateur ?
  * Comment maintenir une expérience principale tout en ajoutant différents usages ?


#### Contenu additionnel

Imaginez-vous prendre l'avion. Quel sera le contenu de votre valise ? Généralement on n'emporte que le strict nécessaire.
Pourquoi le chargement d'un site mobile est donc le même qu'un site complet ?

## Stratégie de chargement du contenu


Un design de site moderne se doit d'être organique et s'adapte en fonction de la taille d'écran disponible.

Il faut réfléchir à la chorégraphie de votre contenu. Dans quel ordre est-il présenté à vos visiteurs ? Vous pouvez utiliser différentes techniques pour changer l'ordre de votre contenu, cela signifie que vous pouvez avoir une navigation à gauche sur de grands écrans qui se déplacera en dessous sur les petits.


### Le scroll mobile

La navigation sur mobile peut s'envisager de différentes manières :

  * Contenu important au début. Le scroll permet de remonter dans le temps (utilisé par les réseaux social)
  * Contenu important au début : vos utilisateurs plongent dans le contenu
  * Afficher des groupes d'objets


Vous ne devez éviter de mélanger l'intégralité de votre contenu dans un scroll unique.

![Wikipedia masue le contenu sur mobile](blog/legacy/2013/05/progressive-disclosure.png?raw=true)

N'oubliez pas qu'il est important de se concentrer sur le contenu principal.

Un lien de retour en haut de page facilitera votre navigation si elle n'est pas clairement accessible.

Ces différents points ne sont pas forcément facile à mettre en place, ils sont justes indispensables.
