---
date: 2014-02-11
slug: foundation5-architecture
title: 'Foundation 5 architecturer ses fichiers Interchange'
page_title: Charger du HTML en fonction de l'appareil
changefreq: monthly
priority: 0.8
---
[Foundation interchange](http://foundation.zurb.com/docs/components/interchange.html) permet aux concepteurs de ne charger que le code HTML le plus approprié en fonction de l’appareil. Les navigateurs mobiles ne doivent pas gaspiller de bande passante en chargeant des ressources à destination des écrans larges, et inversement.

Mais cela signifie que chaque "page" peut avoir plusieurs sources sur le serveur Web. Vous pouvez organiser ces fichiers comme bon vous semble. Tant que les chemins sont corrects, interchange fonctionne très bien. Cependant, j’ai remarqué que pour de gros projets il faut vite mettre au point une organisation en respectant certaines bonnes pratiques.
Voici quelques techniques que j'ai apprises.

## Morceaux de code dans le même dossier

Organiser vos fichiers dans un dossier en dehors du site principal est une évidence.

Mais je conseille de stocker vos snippets Interchange ensembles, et non pas de les organiser dans des dossiers séparés comme "mobile", "tablette" et "complexe".

Un unique dossier, regroupant vos vues, permet de scanner plus rapidement et rend l’identification de vos extraits de code plus facile. Si vous avez une instance interchange pour chaque breakpoint, cette astuce vous épargnera de nombreuses crises de nerfs.

Plutôt que des dossiers séparés, je recommande d'utiliser __des noms de fichiers intelligents__.

## Une règle pour les nommer tous

Nommer ses objets en fonction de ce qu’ils contiennent est plus intelligent que de les nommer en fonction de leur position.
Par exemple `nav-control.snippet.html` est bien mieux que `page-header-menu.snippet.html` pour plusieurs raisons :

- Vous pouvez décider d'utiliser une navigation différente -par exemple, lors d'un événement saisonnier ou une vente temporaire.
- Vous pouvez décider de déplacer la navigation ailleurs dans le site, dans une `sidebar` ou un `footer`.
- La mise en page ou la structure de votre site peuvent changer. Dans ce cas, vos noms de fichiers ne devraient pas avoir à faire de même.

## Utiliser une structure de nommage

Ajouter `.snippet.html` pour chaque fichier permet de différencier les documents HTML incomplets, des fichiers interchange qui seront chargés. Encore mieux généralement je spécifie les tailles comme ceci :

    snippet.simple.html
    snippet.medium.html
    snippet.complex.html

Notez également que je ne nomme pas mes snippets en fonction de la taille ou l'emplacement prévu. Pas de "petit" ou "grand", ou encore "top" et "footer". Cela signifie que lorsque le site internet évolue, je n'ai pas besoin de changer les noms de fichiers en conséquence.

C’est comme nommer en CSS `.big-button-red` et `.top-left`. Les [noms de classes en vrac](http://davidl.fr/blog/css-evolutif.html) sont de mauvaises pratiques. Pour donner plus de sens, j'utilise `.basic` ou encore `.full-feature`.

Mais où est le fun la dedans ? Pour que la force soit avec moi, j'ai décidé d'embrasser le pouvoir du coté obscur de la force comme l'explique Andy Clarke dans son article : [Star wars styling](http://stuffandnonsense.co.uk/blog/about/star-wars-styling).
L'idée est d'utiliser la puissance des personnages de films de science fiction pour hiérarchiser ses fichiers.

    filename.html — simple
    filename.maul.html — moyen
    filename.vador.html — complexe
    filename.emperor.html — fonctionnalités supplémentaires

Cette approche à l'avantage d'utiliser une "convention" existante, que n'importe qui peut comprendre facilement. Inutile ? Sûrement. La question est de créer une convention qui fonctionne.

A la fin, il existe beaucoups de façon de nommer les fichiers. La meilleure façon de trouver son propre système est d'essayer, d'échouer, et de recommencer jusqu'à trouver ce qui vous correspond -ainsi qu'à votre équipe.

Avoir des règles de nommage peut sembler inutile. D'expérience, cela vous économisera de précieuses secondes lors de vos vos développements, qui se transforment en mois de travail arrivé à une certaine échelle.
