---
date: 2014-04-14
slug: migration-wordpress
title: Migration de wordpress vers ruby et Middleman
page_title: J'ai quitté wordpress, Pourquoi ? Comment ?
changefreq: monthly
priority: 0.8
---

Depuis quelque temps maintenant j’ai dit [au revoir à wordpress](http://lesjoiesducode.fr/post/78835971429/quand-lintegrateur-veut-toucher-au-php) et bonjour à middleman.
J'ai décidé de m'éloigner de Wordpress, car je me retrouvais souvent à livrer bataille avec l’interface d'administration et le flux de travail de publication, juste pour faire des choses simples.

Travailler avec le tinymce et le `HTML` fonctionne plutôt bien, mais je trouve que l'écriture en `Markdown` est beaucoup plus simple et [pervasive](http://fr.wikipedia.org/wiki/Environnement_pervasif).
Je passais mon temps à enlever des fonctionnalités, mettre à jour et installer des modules qui par dizaines en utilisant finalement 30% des fonctionnalités.

J'ai donc quitté le monde Wordpress et `php` pour travailler en `ruby avec un générateur de site statiques : [middleman](http://middlemanapp.com/).

## Les avantages

### Rapidité d’écriture

Personnellement voici mon workflow pour publier du contenu.

- J’écris en markdown avec evernote (Généralement depuis ma tablette).
- Je passe sur un ordinateur fixe pour gérer les medias images.
- Je déploie depuis mon ordinateur portable.

L’interface de wordpress est un bonne chose et propose <s>énormément</s>, beaucoups trop d’options pour moi. Trop de solicitations qui au final perturbent votre flux de production de contenu. Un peu comme windows vous passez votre temps à protéger le système contre lui-même au lieu de travailler de façon efficace.

### Rapidité du site

C’est simple : un site web statique se charge plus vite qu’un site hébergé sous wordpress. [@abrisset](https://twitter.com/ABrisset) a fait l’expérience et chiffre à l’appui voici le résultat :

![migration wordpress - ruby on rails](https://farm4.staticflickr.com/3724/13851401935_98a7267d54_o.png)

_Le site se charge 10 fois plus vite_.

### Pas de base de données

Pas de configuration, pas de système complexes, pas de hack possible en accédant à `/wp-admin/`. Travailler sur différents environnements est d'une simplicité déconcertante avec un `git clone nom-du-projet`.

La base de données est remplacé par de simples fichiers textes `.yml` pour la configuration ou `.markdown` pour le contenu.

### Contrôle du code

Wordpress est une bonne solution, mais niveau architecture du code et maintenance c’est juste le chaos le plus complet. On bourre tout dans `function.php` et on verra après.

Comme tout le monde :

- J'ai téléchargé un thème pour le modifier et me rendre compte qu'au final je n'avais besoin que de 10% des fonctionnalités offertes.
- Je suis passé par la case framework de thèmes pour wordpress, qui au final complexifiait l'architecture.
- Ma dernière expérience fut d'utiliser [underscore](http://underscores.me/) (Un boilerplate simple de thème). Mais les performances n'étaient pas au rendez-vous.

Finalement j'ai [middleman](http://middlemanapp.com/) qui embarque de base [Sass](http://sass-lang.com/), [CoffeeScript](http://coffeescript.org/) et juste ce qu'il faut de [ruby](http://rubyonrails.org/). Je passe mon temps à construire des choses. Contrairement à wordpress où je passais mon temps à faire des _dirty hacks_.

### Historique des version

Avec git, vous avez à votre disposition une machine à remonter le temps. Vous pouvez voir toutes vos modifications, créer des branches, tester des fonctionnalités et revenir en arrière facilement si cela ne fonctionne pas. Cela demande une certaine gymnatisque au début, mais impossible de revenir en arrière dès que l'on a commencé à comprendre comment cela fonctionne vraiment.

### En résumé

- __Markdown__ pour l'écriture.
- __Slim__ pour le templating HTML.
- __Sass__ en préprocesseur CSS.
- __CoffeeScript__ pour la compilation du JavaScript.
- __Git__ pour la gestion des fichiers.
- __Terminal__ pour _tout le reste_.
- __Automatique__ pour le déploiement.
- __Contrôle total__ du site et surtout de sa mise en page.
- __Accessible__ pour les débutants et évolutif pour les experts.

## Les inconvénients

### Le media manager

L'une des _killer feature_ de wordpress est sa gestion des images. Un simple drag & drop et vous pouvez ajouter une légende, les medias sont resizés en différentes tailles, et il est très facile de retrouver sa collection d'image.
Avec un générateur de site statique c'est plus compliqué car héberger ses images sur gitthub n'a pas de sens. Pour avoir des performances optimales vous devez utiliser un _CDN_ comme cloudfront, spécialisé dans le stockage.

Personnellement j'utilise le CDN du pauvre : flickR. Avec 1 To de stockage disponible dans sa version gratuite, son retaillage des images et l'upload des photos en drag & drop, je met quiquonque au défi de trouver mieux.

> Sur flickR, si vous souhaitez faire un lien vers une image en .gif ou .png, sélectionnez la taille par défaut de votre image
>
> <cite>Conseil du pro</cite>

### La correction orthographique

Mon contenu est écrit en mode texte brut dans un éditeur de texte. Difficile d'avoir des outils de correction automatique dans cet environnement. Il m'arrive régulièrement de faire des fautes de frappes malgré ma relecture et je n'ai à ce jour pas trouvé de solution.

### Pas de base de données

J’ai écris plus haut que c’était un avantage. C'est aussi un inconvénient dans le mesure où vous devrez sortir l'artillerie et le workflow de deploiement simplement pour corriger un "s" manquant. Avec wordpress il suffit de se connecter à l'interface d'admin et c'est corrigé en 2-3 clics.

## Au revoir wordpress et bonjour middleman

Rome ne s’est pas construite en un jour et migrer l’intégralité de votre contenu vous demandera un peu d'investissement (Personnellement cela m’a pris un peu plus d’un mois)
Voici 3 étapes qui vous feront gagner du temps :

### 1. Transformer ses articles en markdown

Exitwp est un outil pour [migrer un ou plusieurs blogs wordpress](https://github.com/thomasf/exitwp) vers le moteur de blog jekyll (un autre moteur de blog en ruby).

### 2. Utiliser un CDN pour les images

Flickr avec son offre 1 To est une bonne alternative à un vrai CDN. L’avantage principal est la création des différentes tailles d’images lors de l’upload.

### 3. Réaliser un plan de redirection

Si vous ne souhaitez pas perdre la popularité associé à vos pages, vous devez faire des redirections 301. Le remercie [@rduhomez](https://twitter.com/rduhomez), référenceur de talent, pour m'avoir épargné quelques crises de nerf avec ses précieux conseils.
J'ai simplement réalisé un export de toutes mes anciennes url et mis en place des redirections avec le pattern suivant :

    Redirect permanent /wordPress/about/ http://davidl.fr/about.html

Cette méthode peut être largement optimisée, et j'ai certainement perdu quelques morceaux dans la bataille, mais mon objectif principal et de produire du contenu & du code. De toute façon le SEO ça ne sert à rien ;) #privatejoke

## Conclusion

Ce système n'est pas adapté à tout le monde, et il faut une certaine philosophie de hacker / développeur / githuber pour travailler de cette façon. Dans mon cas, j'ai remarqué que c'est beaucoups plus efficace. Couplé avec bower je peux tester n'importe quelle fonctionnalité très rapidement comme les [filtres avec mixitup](http://davidl.fr), les [vidéos en background](http://davidl.fr/webdesign.html), changer complètement [l'aspect du layout](http://davidl.fr/books.html) et utiliser des données de fichiers `.yml` pour être évolutif ...

## Ressources

- [exitwp](https://github.com/thomasf/exitwp)
- [Héberger son site sur GitHub](http://davidl.fr/blog/hebergement-gratuit-ovh.html)
