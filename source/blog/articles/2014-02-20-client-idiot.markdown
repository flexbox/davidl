---
date: 2014-02-20
slug: client-idiot
title: 'Encourager la participation des clients en responsive design'
page_title: Comment dire à ses clients qu'ils sont idiot et les rendres heureux ?
changefreq: monthly
priority: 0.8
---

Cet article est une adaptation de l'excellente [présentation d'Andy Clarke](http://vimeo.com/55339166) et part du constat suivant :

- Le design adaptatif n'est pas simplement notre travail, et impliquer ses clients dans le processus de conception est essentiel
- Nous devons changer notre mode de travail et éduquer nos clients
- Comment dire à ses clients qu'ils ont des idées stupides et s'en faire remercier

## Le responsive design n'est pas que notre problème

C'est une nouvelle façon de concevoir, qui amène de nouveaux problèmes.

En tant que développeurs nous ne voyont que les choses techniques comme les médias queries, les images et la sémantique selon le W3C. La portée est beaucoup plus grande que cela.

C'est une question de stratégie mobile. Les différentes considérations n'impactent pas que la technique.

Alors que de nombreuses équipes sont toujours structurées autour d'une conception en cascade ou linéaire, [Ben Callahan](http://www.creativebloq.com/business/what-responsive-web-design-means-team-organisation-11410353) dit que le responsive webdesign est un catalyseur pour le changement organisationnel.

1. Planning

- UX, wireframe UI ne doivent __jamais__ être en taille fixe

2. Design

3. Développement du front-end

4. Stratégie de déployement

Ce processus de développement peut être comparé aux techniques de travail datant d'avant l'imprimerie.

Je me demande depuis longtemps comment est-il possible de prévoir dans la partie planning les problèmes qui seront rencontrés par la partie développement :

C'est simplement __impossible__.

Prenons un exemple simple : une application iphone de paiement de trajets d'autoroute géolocalisés en fonction des km parcourus.

1. Vous allez créer un cahier des charges
2. Faire des spécifications
3. Votre client va valider toutes les maquettes
4. Vous êtes maintenant à 1 mois de la sortie de votre application qui vous a demandé beaucoup de travail

Et là apple sort l'iPhone 5 et augmente la taille de son écran.... Votre application est-elle toujours compatible ?

Nous devons donc repenser notre mode de conception pour qu'il soit plus fluide.

### L'âge après l'ordinateur et le mode de travail adaptatif

Nous sommes dans une nouvelle ère. Jour après jour l'informatique classique creuse un peu plus sa tombe au profit de la mobilité. Cela à donc un impact sur les méthode de création d'applications web. Le design et le développement doivent êtres mélangés ensemble. La clef du succès est l'itération et les tests.

## Comment faire participer un client dans le processus de conception ?

Il est important d'éduquer vos clients.

Au XXIème siècle les maquettes statiques n'ont pas de sens.

> Concevoir pour le web, c'est comme visualiser un <strong>tesseract</strong>. Nous construisons des expériences en manipulant leurs ombres.
>
> <cite>Tim Brown</cite>

Comment voulez-vous montrer à votre client toutes les possibilités du web comme les animations et les états des liens ?

Bien sur il est possible de simuler ces évènements dans un logiciel mais c'est long et fastidieux.

Imaginez créer l'intégralité de vos maquettes avec Photoshop. Au dernier moment votre client vous demande de changer toutes les polices de caractères.

Vous aller donc passer des heures à changer un par un vos éléments. Grâce aux préprocesseurs CSS cela peut être réglé en une seule ligne de code.

Je ne dis pas que Photoshop est inutile, bien au contraire. Vous pouvez toujours utiliser ce logiciel pour créer une atmosphère qui exposera les concepts suivants :

- Typographie
- Textures
- Humeur, théorie des couleurs
- Dégradés ou flat ?
- Bordures arrondies ou non ?

Toutes ces choses n'ont rien à voir avec la mise en page. C'est fondamentalement différent.

Cela n'a pas de sens de mélanger la décoration d'une maison avec les fondations.

Il est temps de se demander maintenant pourquoi tant de sites internet ont pendant des années étés crées sur une base fixe de 960px.

1. Le graphiste créé la maquette depuis Photoshop.
2. Le client à aimé.
3. Il a signé.
4. Le travail est donné au développeur.
5. A cette étape, ce dernier n'a plus le droit de pendre de décisions puisque le client à déjà signé.

C'est pourquoi dans le passé nous avons passé un nombre incalculable d'heures à essayer de bidouiller du CSS et du javascript.  Le site web doit ressembler à ce qu'est fait sur Photoshop par le designer, indépendamment des possibilités offertes par les navigateurs webs.

Nous avons javascript, jquery, et les hacks CSS par milliers pour effectuer des corrections spécifiques en surchargeant inutilement nos sites web.

A qui est-ce donc la faute ? C'est __notre faute à tous__ car nous avons donné le mauvaix choix au client en lui vendant une maquette statique Photoshop, pour un site qui est dynamique. Ce dernier a signé et veux donc voir le résultat.

Nous devons changer ce que l'on vend aux clients en partageant les étapes de conception au lieu de lui donner directement un site web fini.
C'est la même chose que lors de la construction d'une maison, un architecte nous vend des plans. Notre imagination fait le reste.

Montrons au client de prototypes HTML & CSS, une atmosphère et discutons avec lui. Vous devez conserver le client engagé dans le processus de création.

Il est important de garder le client concentré. Il ne faut __jamais__ envoyer un email avec une capture d'écran d'un site en lui posant la question : "Qu'en pensez vous ?"

Orientez ce que vous voulez valider avec lui pour rentrer dans un processus de création créative. Si vous n'orientez pas le débat il y a 90 % de chances que votre réponse soit une suggestion stupide concernant un détail futile : Votre client n'aimera pas la teinte de vert utilisée pour les boutons alors que vous cherchez à valider la mise en page du contenu.

### Rendre son client heureux

Comment dire ouvertement à son client qu'il est idiot pour qu'ensuite il vous soit reconnaissant ? Vous devez vous rappeler de ne pas être sur la défensive. Vous êtes le designer / développeur, vous savez de quoi vous parlez et vous êtes le spécialiste. Il n'est pas ici question de critique, il est question de respecter votre travail.

#### étape 1 : Publication

Ne jamais publier de visuels ou de maquette Photoshop sur votre espace de gestion de projet et demander des retours du type : qu'en pensez vous ?
Votre client se focalisera sur un détail futile comme la taille de son logo alors que vous ou votre équipe a créé un magnifique design.

#### étape 2 : Présentation

Vous devez avoir le contrôle de votre environnement de travail. Présentez physiquement vos travaux avec des contraintes :

- Limite de temps
- Limite de portée

Cette étape vous permettra de valider votre travail en évitant les malentendus.

#### étape 3 : Seul le travail compte

Laissez vos sentiments à la maison et concentrez vous sur le travail. Nous pouvons ne pas être d'accord avec notre client seulement si c'est à propos du travail, l'inverse est également possible. L'objectif est de se concentrer sur le travail accompli et d'oublier notre ego.
Pour vous sortir d'une situation périlleuse vous pouvez utiliser un joker.

> Votre remarque concerne cette présentation ou est-ce une opinion personnelle ?
>
> <cite>Ra's al Ghul</cite>

#### étape 4 : L'éducation

Expliquer le pourquoi du comment et soyez passionnés.
À chacun son métier, n'hésitez pas à montrer des données et expliquez pourquoi vous avez fait certains choix.

> Votre site web responsive n'est pas compatible avec internet explorer 8 sinon cela demandera 3 semaines de développement en plus et vous coûtera xxx € en plus

Si vous avez établi une bonne relation, c'est à ce moment là que vous pouvez suggérer qu'une idée de client est stupide.

> They enjoy so much the design process that they said to you thank you for that.
>
> Andy clarke
