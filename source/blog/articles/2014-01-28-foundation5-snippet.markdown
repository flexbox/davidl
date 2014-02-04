---
date: 2014-01-28
slug: foundation5-snippet
title: Foundation 5 snippet HTML pour Sublime Text
page_title: Développer votre HTML vitesse lumière avec Foundation 5
changefreq: monthly
priority: 0.8
---
Si vous avez visité ma sélection d'[outils pour développeur front-end](http://davidl.fr/toolkit.html), vous savez que j'utilise (selon moi) le meilleur éditeur de code : Sublime Text.

Le principal avantage de cet éditeur de code est son système de packet, qui permet une personnalisation poussée de l’éditeur.

## Snippets pour Foudation 5

C'est ce [repo sur github](https://github.com/zurb/foundation-5-sublime-snippets) qui vous permettra de développer plus vite votre HTML.

Un simple `zf-accordion` + `tab` génère le marquage suivant :

![Accordion zurb foundation](blog/2014/foundation/foundation-accordion.gif?raw=true)

## Installation

Tout se passe dans les `Preference` > `Package control`

![Sublime Text preference](blog/2014/foundation/sublime-preference-package.png?raw=true)

La première étape est d’ajouter une nouvelle source (raccourci `cmd` + `shift` + `P`) :

Package Control: Add Channel

    https://github.com/zurb/foundation-5-sublime-snippets.git

![Sublime Text ajouter source](blog/2014/foundation/sublime-add-source.png?raw=true)

Recherchez la commande `Package Control: Install Package`

![Sublime Text installation](blog/2014/foundation/sublime-install-package.png?raw=true)

Il ne reste plus qu’a rechercher `Foundation-5-snippet`, et voila!
