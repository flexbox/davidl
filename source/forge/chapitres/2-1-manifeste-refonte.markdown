---
date: 2014-05-05
slug: 2-1-manifeste-refonte
title: Manifeste de refonte adaptative
page_title: Manifeste
changefreq: monthly
priority: 0.8
---

## Préparation

Avant de vous lancer dans ce processus chronophage, vous devez être convaincu des bénéfices de [cette méthode de conception](http://davidl.fr/forge/1-1-technique.html).
Ne vous contentez pas de le faire parce que tout le monde fait. La conception adaptative aka __responsive design__ n'est pas une tendance du design moderne, c'est un nouvel état d'esprit ainsi qu'un bouleversement des méthodes de travail.

Voici quelques avantages et inconvénients de cette technique :

### Avantages

- Votre site fonctionne sur de nombreux dispositifs et différentes tailles d'écran.
- Un seul contenu à publier, maintenir et héberger.
- Amélioration du référencement : vous avez la même URL quelle que soit la plate-forme.
- Vous ne pouvez pas prédire ce que les appareils deviendront dans le futur, mais bonne nouvelle : votre site est déjà équipé pour les affronter.

### Inconvénients

- Un site web ou une application responsive signifie énormément de travail.
- Il est difficile, voire impossible, de rénover un site web existant. Il est plus facile et logique de partir de zéro.
- Une attention particulière doit être accordée à la performance et la rapidité de chargement.

## Priorité au mobile

L'idée de base est simple : plutôt que de commencer avec la version plein écran d'un site web, puis de l'adapter pour mobile, vous commencez avec l'expérience mobile, puis la construction continue à partir de ces bases. Cette approche se développe de plus en plus.

### Avantages

- Votre expérience est optimisé pour les utilisateurs mobiles.
- Obligation d'aller à l'essentiel. Il n'y a pas de place pour le contenu indésirable.

La priorité au mobile n'est pas une solution magique pour tout les projets. Si vous faites une application métier complexe, vous ne pouvez pas dire à votre client d'abandonner 80% de la fonctionnalité juste parce que c'est tendance. Pour les applications riches en fonctionnalités ou de création de contenu, vous serez mieux en commençant par la version PC de bureau.

## Adaptez vos méthodes de travail

### Prévoir suffisamment de temps et de ressources

La conception adaptative demande beaucoup de temps. Parfois, vous aurez besoin au minimum, de deux fois plus de travail pour réaliser votre projet. Tenez-en compte lors de sa planification.

### Croquis

Vous devez créer plusieurs esquisses pour chaque écran. Dans les premières étapes, il suffit de dessinner les extrêmes : un croquis très petit type mobile et un de très grande taille. Cela vous fait gagner du temps, car vous savez que vous pouvez interpoler les tailles entre-deux plus tard.

Vous n'avez pas à faire de wireframes détaillés pour chaque résolution d'écran. Prenez une taille d'écran pour commencer, puis faites des vignettes de wireframes pour les autres tailles d'écran. Cela vous fera gagner un temps précieux.

### Conception dans le navigateur

Si vous êtes à l'aise avec le code, je vous conseille de concevoir directement dans le navigateur. Bien sûr, vous pouvez (et devez) créer des éléments graphiques dans votre logiciel préféré. Mais [restez pragmatique](http://davidl.fr/blog/fin-psd.html) : Ne vous tourmentez pas sur la disposition et les dimensions, elles varient en fonction de la résolution.

Considérons les détails de la conception dans le navigateur à la place. Cela présente les avantages suivants :

- Vous pouvez vérifier vos progrès sur différents appareils immédiatement.
- Beaucoup de petits problèmes ne se posent que lors de l'exécution de code réel dans un vrai navigateur.
- Lorsque vous modifiez le CSS pour un élément, la modification est appliquée à travers l'ensemble du projet.
- Conception et intégration sont effectuées en même temps.

### Une étroite collaboration est la clé

Si le designer et le développeur sont des personnes différentes, elles doivent travailler en étroite collaboration au cours de la mise en oeuvre. Un projet adaptatif nécessite une quantité importante de va et vient : styler un élément, le coder en CSS, le tester sur des appareils, corriger les problèmes...

### Test

__Ne sous-estimez pas les tests__.

Réservez beaucoup de temps pour cela. Il ne s'agit plus du match navigateurs modernes vs Internet Explorer. Maintenant, vous avez une multitude de plates-formes, appareils et versions de navigateur. Testez votre site sur autant d'appareils différents que possible.

![open device lab](https://farm3.staticflickr.com/2904/13888164229_5a86fb6dd6_o.jpg)
_Laboratoire de test mobile à Lille : [Walking Lab](http://walkinglab.fr/)_

N'hésitez pas à vous rapprocher du mouvement [open device lab](http://opendevicelab.com/). Le principe de ces laboratoires est de regrouper le plus d'appareils possibles afin d'industrialiser les tests.
