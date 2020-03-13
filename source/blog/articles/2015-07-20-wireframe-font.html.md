---
date: 2015-07-20
slug: wireframe-font
title: Font, prototype & wireframe
description: Utilisez Redacted Font pour tester votre design reponsive en évitant le lorem ipsum.
image: https://lh3.googleusercontent.com/p0jihJlrzMUQkGV5kPGvV3e0tPzwvxfrq15G4ylsYkE=w2168-h1514-no
page_title: Gagner du temps en prototypage
page_emphasis: Tester votre mise en page responsive sans contenu
changefreq: monthly
priority: 0.5
---

J’ai souvent rencontré ces problèmes lors de la création de nouveaux projets. Je me suis rendu compte que je perdais énormément de temps pour des choses qui n’avaient pas de valeur, et c’était entièrement de ma faute. J’ai donné le choix au client pour quelque chose qui est [difficile à comprendre et à visualiser](https://fr.wikipedia.org/wiki/Tesseract) : valider une mise en page responsive.

Généralement le workflow est le suivant :

- Travailler dur pour mettre en place les idées du client, avec une mise en page originale de maquette statique.
- Créer des pages — sans contenu — avec du lorem ipsum.
- Envoyer un concept initial au client avec des arguments expliquant pourquoi la proposition n’était pas réalisable.
- Recevoir un email de retour sans commentaire constructif excepté ce n’est pas le bon contenu, pourquoi le texte est en latin, cela n’a aucun rapport avec mon produit…

Tout ces échanges par email font __perdre du temps à tout le monde__ et [gérer les retours clients](https://archive.davidl.fr/clients.html) devient très vite chronophage.

## Solution

[Redacted Font](https://github.com/christiannaths/Redacted-Font) masque le texte en blocs d’informations. Les informations sont illisibles mais cela permet d’imaginer la future mise en page sans se soucier du contenu.

Voici un exemple :

![Wireframe & prototype font](https://lh3.googleusercontent.com/p0jihJlrzMUQkGV5kPGvV3e0tPzwvxfrq15G4ylsYkE=w2168-h1514-no)

_Redacted font sur une homepage_

Le principal avantage de cette solution est de tester votre mise en page à l’endroit où vous devez prendre vos décisions de design : __dans un navigateur web__.

## Mise en place

Vous souhaitez utiliser Redacted Font ? Vous devez ajouter les polices de caractères à votre projet. Ajoutez aussi ces déclarations dans votre feuille de style :

~~~css
  @font-face {
    font-family: "Redacted";
    src: url("redacted-font/fonts/web/redacted-regular.eot");
    src: url("redacted-font/fonts/web/redacted-regular.woff2") format("woff2"),
         url("redacted-font/fonts/web/redacted-regular.woff") format("woff"),
         url("redacted-font/fonts/web/redacted-regular.otf") format("opentype"),
         url("redacted-font/fonts/web/redacted-regular.svg#filename") format("svg");
  }
~~~

Une fois que votre police est disponible, vous pouvez l’utiliser pour remplacer votre texte afin de valider votre mise en page :

~~~css
  .prototype {
    font-family: "Redacted";
    color: #999;
  }

  .prototype-script {
    font-family: "Redacted Script";
    color: #999;
  }
~~~

Redacted Font possède des variations comme Regular, Script, et Bold Script qui fonctionnent dans différentes tailles.

## Exemple

Si vous souhaitez tester la mise en page de votre site, vous devez le faire dans un navigateur. Créer une maquette fixe pour un contenu fluide & responsive n’a pas de sens.

<a href="http://flexbox.github.io/foundation-boilerplate/templates/homepage.html" class="button">Démonstration</a>

En utilisant cette solution dès aujourd’hui __vous gagnerez un temps considérable__ en évitant les commentaires inutiles. Redacted Font vous permet de créer des prototypes qui représentent l’espace réel, sans les problèmes de “faux contenu”.
