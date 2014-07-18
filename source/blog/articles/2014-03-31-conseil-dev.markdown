---
date: 2014-03-31
slug: conseil-dev
title: "Astuces et conseils de développeur web front-end"
page_title: Mon meilleur conseil dans le domaine du développement web
changefreq: monthly
priority: 0.8
---

Apprendre. Coder rapidement. Livrer. Vendre. C'est la baseline de [dotnetdojo](http://www.dotnetdojo.com/donnez-meilleur-conseil-developpement-web-200-euros-a-gagner/) un blog qui propose de partager son meilleur conseil concernant le développement web. J'ai décidé de participer à l'opération, en donnant ma meilleure astuce en tant que développeur front-end :

> Codez pour le système et non pour les pages

## Principe d’un système de design

Un système possède des composants de base comme la typographie, la mise en page, les formes, les couleurs. Quand vous considérez la conception d’un produit en entier ces composants peuvent êtres enrichis de patrons de conception, de stratégie du contenu, du ton employé... Ces décisions peuvent vous aider à avoir un produit cohérent tout au long du processus de conception.

Depuis l’avènement du responsive design, ce principe est de plus en plus vrai. Le comportement de chaque composant doit être testé sur différents appareils. Il faut vérifier sa réaction, permettre qu’il soit flexible et qu’il délivre une expérience optimale indépendamment du périphérique utilisé.

### Composants qui ne se modifient pas :

- Unités de base
- Couleurs
- Formes
- Typographie

###Composants au comportement fluide :

- Grille
- Mise en page
- Taille des polices

## Composants de base

### Priorité à la typographie

Quand vous travaillez dans un contexte avec énormément de texte, la typographie est la façon la plus simple de donner une ambiance visuelle à votre contenu. Généralement je choisis [2 polices de caractères](http://davidl.fr/blog/typographie-google-font.html) différentes :

- Sans serif pour le contenu
- Serif pour les titres

Pour donner un rythme vous pouvez aussi jouer avec du contenu en gras, en italique, avec les tailles différentes ...
L'avantage est que si le `viewport` change, votre expérience de lecture restera cohérente.

### Typographie et mise en page

L'une des première chose est de choisir une unité de base pour commencer à travailler. Nombre de colonnes et taille maximale pour votre grille, taille de la police et des titrage basés sur la suite de fibonachi, ou quelque chose de plus arbitraire. Des fois il est judicieux de choisir des multiples de 10 pour rendre les calculs mathématiques en CSS plus simples. Le typographe Tim Brown suggère d'essayer la méthode d'[échelle modulaire](http://alistapart.com/article/more-meaningful-typography).

### Grille et mise en page

Une grille fluide est une base solide pour la conception de votre système de mise en page. Mais vous devez vous faire à l'idée que votre système doit fonctionner à travers différentes résolutions. Vous devez garder votre composant de grille [pervasif](http://fr.wikipedia.org/wiki/Environnement_pervasif). Si votre contenu contient un groupe de 3 blocs sur une ligne, vous devez le faire passer à 1 bloc sur 3 lignes pour pouvoir être affiché sur mobile.

Cela peut paraître simpliste, mais c'est extrèmement important pour le designer. Il pourra mettre en avant certains blocs, choisir de centrer du texte et des icones dans un certain contexte, aligner à gauche dans un autre...
L'important est d'avoir le plus d'éléments communs pour conserver une expérience utilisateur uniforme.

### Former des composants

Concevoir des composants est un concept déjà utilisé dans l'ancien monde du "codage par page".

Depuis que la propriété CSS `border-radius` est supporté par les principaux navigateurs, beaucoups de design sont basés sur des cercles. Les composants boutons avec une bordure arrondie ou non sont des éléments qui se distinguent très rapidement.

Utilisés correctement ensembles, vous obtenez une atmosphère unique, réutilisable et cohérente. L'astuce conciste à penser de façon globale en analysant tous les composants qui forment une page :

- Boutons
- Listes
- Fil d'arianne
- Contenu mis en avant
- Menu principal
- Navigation secondaire

J'utilise [SASS](http://sass-lang.com/) pour faciliter la constructions de composants.

### Couleur

La couleur est la façon la plus basique de renforcer son image dans le monde multi-écran. Utiliser un bon système de couleur permet d'être facilement reconnaissable, et fonctionne sur n'importe quel appareil.

### Processus de conception

Utiliser un système de design n'est pas forcément associé à une méthode particulière, mais les conseils suivants peuvent vous aider.

#### Sortir du [paradigme](http://fr.wikipedia.org/wiki/Paradigme)

Un [système de design](http://styletil.es/) permet de se concentrer en séparant les différents composant. Travailler indépendamment de la mise en page permet de construire ses éléments simplement, sans rentrer dans l'enfer du `breakpoint`. Cela nous force à employer des éléments réutilisables, ce qui au final nous amène à produire moins de code.

#### Concevoir dans le navigateur

Personnellement je ne peux pas commencer de nouveau projet en concevant dans le navigateur.  (Et je suis admiratif si vous y arrivez, généralement je commence avec un papier et un crayon) Les maquettes statiques ne sont pas la seule alternative. Les [guides de styles](http://trulia.github.io/hologram/) sont parfait pour exprimer les concepts de votre système de design. Les bibliothèques de patron de conception fonctionnent aussi très bien.

#### La limite des prototypes

Arrivé à un certain moment, pour tester vos idées, ou parce qu'un client à besoin d'aide pour visualiser comment votre système fonctionne, vous allez devoir arrêter de construire vos composants pour mettre en place vos différentes pages. C'est une bonne occasion pour faire un "stress test" et les confronter à de vraies données. Ce n'est pas la fin du monde mais vous devez vous assurer que vos composants fonctionnent sur __tous les appareils__, pas seulement les iBidules, ou même les mobiles actuellement à la mode.

Vous allez choisir les `breakpoint` en fonction de votre contenu (hiérarchie, densité d'affichage, type d'interaction) pour avoir un affichage idéal. Avec de vraies données et les retours de vos clients, vous allez pouvoir facilement faire des modification car en changeant une partie de vos composants, la modification sera répercutée partout dans votre application.

## Préparé pour l’avenir

Créer des systèmes de conception nous donne la souplesse nécessaire pour être compatible avec les périphériques inconnus de l'avenir. C'est peut-être un changement de processus, mais il n'est pas très compliqué d'adopter un mode de pensée objet. Les pionniers dans la conception adaptative ont un travail difficile. Certains de ces problèmes ont peut-être déjà été résolus dans d'autres technologies ou d'autres industries, mais c'est à nous de trouver ces liens, pour nous aider à créer des solutions et des normes qui offriront la meilleure expérience possible aux utilisateurs.

Nous devons continuer à expérimenter et à communiquer, en particulier dans le domaine du design, les expériences d'utilisateurs réussies sont un vrai signe pour savoir si notre système fonctionne.
