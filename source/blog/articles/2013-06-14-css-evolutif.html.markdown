---
date: 2013-06-14 11:55:46+00:00
slug: css-evolutif
title: Coder du css évolutif
page_title: Votre CSS est malade
changefreq: monthly
priority: 0.8
---

Si vous êtes un peu anglophone vous devez connaître l’excellent Podcast [shoptalkshow](http://shoptalkshow.com/)
 Le principe du podcast est simple : vous pouvez poser votre question en audio et des pros du web vous répondent.

 Récemment Chris Coyier répondu aux questions suivantes :

> Comment pouvez-vous dire si votre CSS est mauvais ?

> Quels sont les signes que le code est optionnel, ou que le développeur n’a pas fait un bon travail ?

> Qu’est-ce que vous regardez dans le code afin de déterminer s’il est bon ou mauvais ?

Comme je suis un super bilingue j’ai décidé de vous offrir une traduction pour ceux qui ont un peu de mal avec l’accent américain.
 Je vais partager quelques petites techniques (il y a sans doute des choses que j’ai oublié) pour vous permettre de juger votre CSS, cela vous donnera une idée de sa qualité, de sa maintenabilité et son intégrité …

## Annulation styles

N’importe quelle règle CSS qui enlève du style (sauf dans un [reset](http://necolas.github.com/normalize.css/)) doit déclencher une sonnette d’alarme.
 La définition du CSS est : __styles en cascade__. Les propriétés doivent hériter de choses définies précédemment.
 Déclarer plus de règles pour enlever du style n’a pas de sens.

Toutes les déclarations CSS comme celles-ci :

    border-bottom: none;
    padding: 0;
    float: none;
    margin-left: 0;

... Sont généralement de mauvaises nouvelles.

Si vous souhaitez éliminer les bordures, vous avez probablement appliqué leur style trop tôt.
C’est vraiment difficile à expliquer, je vais exposer avec un exemple simple :

    h2 {
        font-size: 2em;
        margin-bottom: 0.5em;
        padding-bottom: 0.5em;
        border-bottom: 1px solid #ccc;
    }

Ici, nous offrons à tous nos `h2` une taille de police et une marge, mais aussi un peu de padding et une bordure pour les séparer de l’élément suivant.
Mais, peut-être, nous avons une situation dans laquelle nous ne voulons pas de filets en bordure, peut-être, nous avons une situation où nous voulons simplement un `h2`.


Nous allons donc devoir écrire plus de règles pour créer moins de style :

    h2 {
        font-size: 2em;
        margin-bottom: 0.5em;
        padding-bottom: 0.5em;
        border-bottom: 1px solid #ccc;
    }
    .no-border {
        padding-bottom: 0;
        border-bottom: none;
    }

Ici, nous avons une dizaine de lignes de CSS et un nom de classe immonde.
Il vaut beaucoup mieux avoir des noms de classe [sémantique](http://fr.wikipedia.org/wiki/Web_s%C3%A9mantique) :

    h2 {
        font-size: 2em;
        margin-bottom: 0.5em;
    }
    .headline {
        padding-bottom: 0.5em;
        border-bottom: 1px solid #ccc;
    }

Dans ce cas, nous avons 8 lignes de CSS, sans rien défaire, et un joli nom de classe.
Plus vous vous enfoncez dans une feuille CSS plus vous devez ajouter des styles, jamais en retirer.
Si à un moment vous devez retirer du style, vous avez sûrement ajouté des propriétés trop rapidement.
Ceci est un exemple très simple, mais il permet d’illustrer parfaitement mon point de vue.

Imaginez un CSS comme ceci avec des dizaines de milliers de lignes … La taille du fichier explose inutilement en ajoutant des propriétés inutiles. Ne commencez jamais par un style trop complexe. Vous risquez de devoir annuler votre travail plus tard, vous finirez par écrire plus de CSS pour afficher moins de style.
Dès que je vois du CSS qui annule le style précédent, je peux être à peu près sûr que c’est parce qu’un élément est mal architecturé et que l’ordre dans lequel les choses ont été construites / écrites à besoin d’une retouche.

## Les chiffres magiques

Cette notion peut être comparée à un épouvantail.
Je déteste les nombres magiques.
Un nombre magique est une valeur qui est utilisé «&nbsp;car ça fonctionne&nbsp;».

Prenons l’exemple suivant :

    .site-nav{
        [styles]
    }
    .site-nav > li:hover .dropdown{
        position:absolute;
        top:37px;
        left:0;
    }

`top: 37px;` est un nombre magique.

La seule raison pour laquelle cela fonctionne, sans doute, c’est parce que les `li` à l’intérieur du `.site-nav` devraient être de 37px de haut, et le menu déroulant doit apparaître en bas de celui-ci…
Le problème ? 37px est entièrement circonstanciel et en tant que tel, nous ne devons placer aucune confiance dans ce nombre.
Que faire si quelqu’un change la taille de police `.site-nav` à 29px de hauteur ? Ce numéro n’est plus valide et le prochain développeur doit le savoir pour le mettre à jour.
Qu’est-ce qui se passe quand Chrome affiche 37px, mais IE affiche 36px ? Ce nombre ne fonctionne que dans une situation donnée.
Ne jamais, __jamais__ utiliser des numéros juste parce qu’ils fonctionnent. Dans cette situation, c’est mieux de remplacer `top: 37px;` par `top: 100%;` ce qui signifie en fait «&nbsp;tout le chemin depuis le sommet&nbsp;».

Les nombres magiques ont plusieurs problèmes qui leur sont associés.
Comme ci-dessus, ils ne peuvent pas être réutilisés, mais aussi, avec leur «&nbsp;juste parce que ça marche&nbsp;», il est difficile de communiquer à un autre dev d’où ce nombre est venu. Si vous aviez un exemple plus complexe qui utilise un certain nombre et que la magie ce chiffre est devenue invalide, vous êtes confronté à un ou plusieurs problèmes suivants :

* Le prochain dev ne sait pas d’où le nombre magique est venu. Il le supprime, vous gagnez donc un retour à la case départ.
* Le prochain dev est prudent, parce qu’il ne sait pas d’où le nombre magique est venu. Il décide d’essayer de résoudre le problème sans toucher à ce chiffre magique. Cela signifie qu’un vieux, inutile, démodé, nombre magique reste dans le code, et le prochain dev a simplement réalisé un hack spécifique par dessus de celui-ci. Vous vous êtes fait piraté votre style.

Les nombres magiques sont de mauvaises nouvelles; D’expérience ils sont mis à jour tôt ou tard, ils embrouillent les autres développeurs, ils ne peuvent pas être expliqués, on ne peux pas leur faire confiance.
Il n’y a rien de pire que de cibler le code de quelqu’un d’autre et de voir un nombre inexplicable. Si c’est le cas, vous vous demandez pourquoi il est nécessaire et si oui ou non vous oserez y toucher.
Dès que je vois nombres magiques en CSS je commence à poser des questions. Pourquoi est-ce ici ? Que faut-il faire ? Pourquoi cela fonctionne-t avec ce numéro ? Comment atteindre le même résultat sans ce chiffre magique ?
Évitez les nombres magiques comme la peste.

## Sélecteurs requis

La notion de sélecteur requis se code de la manière suivante :

    ul.nav {}
    a.button {}
    div.header {}

Fondamentalement, ce sont les sélecteurs qui sont inutilement prefixées par un élément.
Ce sont de mauvaises nouvelles car :

* Ils inhibent totalement la réutilisation sur un autre élément.
* Ils augmentent la spécificité.
* Ils augmentent le temps de rendu ce qui diminue la performance.

Ces sélecteurs peuvent, et devraient être :

    .nav {}
    .button {}
    .header {}

Maintenant, je sais que je peux associer `.nav` à un `ol`, je peux appliquer `.button` pour un `input`, et, quand le site sera porté vers HTML5 je peux rapidement échanger mon `div` pour un élément `header` sans se soucier d’invalider tous les styles.

En ce qui concerne les performances, ce n’est qu’une question très légère, mais c’est tout de même un problème. En spécifiant des sélecteurs vous augmentez la charge de travail d’un navigateur.

Des exemples plus extrêmes pourraient être :

    ul.nav li.active a {}
    div.header a.logo img {}
    .content ul.features a.button {}

Toutes ces sélecteurs peuvent être raccourcis massivement, ou totalement réécrit :

    .nav .active a{}
    .logo > img {}
    .features-button{}

Ce qui nous aidera à :

* Alléger le code
* Augmenter les performances
* Permettre une plus grande portabilité
* Réduire la spécificité

Dès que j’aperçois des sélecteurs requis quand je défile une feuille de style j’ai immédiatement envie de savoir pourquoi ils sont écrits de manière si verbeuse et comment nous pouvons les supprimer pour être le plus court possible.

## Valeures brutes / absolues

Comme les nombres magiques, les valeurs codées en dur sont aussi de mauvaises nouvelles. Une valeur codée en dur pourrait être quelque chose comme ceci :

    h1 {
        font-size: 24px;
        line-height: 32px;
    }

Ici `line-height: 32px;` n’est pas cool, `line-height: 1.333` est un bien [meilleur choix](http://www.pearsonified.com/2011/12/golden-ratio-typography.php).

Les hauteurs de ligne doivent toujours être réglés relativement afin de les rendre plus tolérantes et flexibles. Si jamais vous changez la taille de police d’un `h1`, vous voulez savoir que votre `line-height` va suivre le mouvement.
Ne pas avoir de parent relatif au `line-height` signifie que si vous souhaitez modifier la taille de votre titre vous allez vous retrouver avec des propriétés du genre :

    h1{
        font-size:24px;
        line-height:32px;
    }
    /** Titre principal h1 **/
    .site-title{
        font-size:36px;
        line-height:48px;
    }

Ici, nous devons continuer à ajouter une hauteur de ligne fixe indéfiniment car notre taille de base n’est pas assez souple. Pour fluidifier notre production de code il faut changer le `line-height` :

    h1 {
        font-size: 24px;
        line-height: 1.333;
    }
    /** Titre principal h1 **/
    .site-title{
        font-size:36px;
        line-height:1.666;
    }

Cela ne semble pas être une énorme différence, mais sur chaque élément de texte d’un projet de grande envergure, cet impact est important.

__ATTENTION__ : Ces règles ne s’appliquent pas seulement au `line-height`. Pratiquement n’importe quelle valeur brute codée en dur dans une feuille de style doit être traitée avec prudence et méfiance.

Ces chiffres absolus ne seront jamais à l’épreuve du temps, souple ou indulgent, et doivent donc être évités. Les seules choses qui doivent avoir leurs valeurs codées en dur sont les sprites puisqu’elles sont associées à des images où la taille est fixe.
Dès que je vois une unité codée en dur dans une feuille de style je veux savoir pourquoi elle est nécessaire et comment elle pourrait être évitée.

## Le Bucheron

La méthode du bucheron est comparable aux nombres magiques. Dans le monde du CSS, vous utilisez des nombres magiques codés en dur et une variété d’autres techniques pour forcer un mode de rendu. Prenons, par exemple :

    .foo {
        margin-left:-3px;
        position: relative;
        z-index: 99999;
        hauteur: 59px;
        float: left;
    }

Ces déclarations sont simplement **horribles**. Elles sont lourdes, forcent la mise en page, affectent des déclarations qui ne sont clairement utilisées que pour hacker la mise en page seulement dans un cas spécifique.
Ce type de CSS est représentatif d’une disposition mal codée qui nécessite ce genre de manipulation, un manque de compréhension du modèle de boîte, de la mise en page, ou les deux.

Une mise en page correctement codée ne devrait jamais faire appel à la méthode du bucheron. Avec une bonne compréhension du modèle de boite et un système de grille adapté vous de devriez plus jamais vous retrouver dans cette situation.
Dès que je croise du CSS codé de cette façon je me pose la question de savoir comment cela est passé, et comment il est possible de supprimmer ces règles pour repartir sur de meilleures bases.

## Sélecteurs dangereux

Un «&nbsp;sélécteur dangereux&nbsp;» est un sélecteur avec une trop grande portée. Voici un exemple très simple et évident de sélecteur dangereux :

    div {
       background-color: #FFC;
       padding: 1em;
    }

Cette déclaration fera hurler n’importe quel développeur : pourquoi diable voudriez-vous sélectionner chaque div de votre site ?
Bonne question... Alors pourquoi existe-t-il des sélecteurs comme `aside{}` ? Ou `header{}` ou `ul{}` ? Le problème de ces sélecteurs c’est qu’il sont de haut niveau et qu’ils finiront par conduire à défaire du CSS, expliqué dans la section précédente.

Prenon l’exemple de `header{}`

Beaucoup de personnes utilisent un élément `header` pour identifier leur en-tête principale -ce qui est une bonne idée- cependant, si vous le stylez votre `header` comme ceci :

    header {
        padding:1em;
        background-color:#BADA55;
        color:#fff;
        margin-bottom:20px;
    }

... dans ce cas ce n’est pas correct. `header` ne signifie pas l’ensemble de l’entête de votre site et en lisant la documentation il est bien spécifié que `header`peut être utilisé pour n’importe quelle en-tête. Un bon exemple est de cibler l’élément avec une classe `.site-header{}`.

Donner un style spécifique à un sélecteur générique est dangereux. En suivant la logique de cascade, les modifications se répercuteront dans des zones où ils ne devraient pas dès que vous commencerez à utiliser cet élément. Vous aurez besoin d’annuler ces déclarations (en ajoutant plus de code pour donner moins de style) afin de lutter contre cela.
 Assurez-vous de choisir correctement vos sélecteurs.

Prenons l’exemple :

    ul {
        font-weight:bold;
    }
    header .media{
        float:left;
    }

Dès que je vois un sélecteur de seul, ou en tête d’une classe d’abstraction très basique, comme ci-dessus, je commence à paniquer.

Je sais que la portée de ces sélecteurs est trop large et va créer rapidement des ennuis. Dès que nous essayerons de réutiliser ces éléments nous allons hériter du style que nous ne voulons pas nécessairement parce que, quelque part, il y a une règle de sélection plus importante qui prendra le dessus.

## !important

`!important` c’est très bien. C’est un outils très utile. Toutefois, `!important` ne doit être utilisé dans certaines circonstances.
`!important` Devrait toujours être utilisé en tant que prévention et non en tant que hack.
Je veux dire qu’il ya des moments où vous savez qu’un certain style doit l’emporter.
Par exemple, vous savez que vous aurez toujours envie que vos erreurs soient rouges, alors cette règle est tout à fait correcte :

    .error-text{
        color: #c00!important;
    }

Si l’erreur se produit dans une `div` où le texte est toujours bleu, nous pouvons être sûrs que nous voulons briser cette règle dans le cas d’erreurs. Nous voulons toujours des erreurs rouges parce que c’est une erreur, et l’interface utilisateur doit toujours rester cohérente. Ici, nous pouvons anticiper `!important` parce que nous savons que nous voulons toujours des erreurs rouges.

`important` est mauvais quand il est utilisé comme un hack. Il est utilisé pour sortir d’un problème de spécificité, et le recours à `!important` est utilisé pour sortir d’une impasse en forçant le fonctionnent des choses.

Utiliser `!important` de cette façon contourne les problèmes causés par une mauvaise architecture du CSS. Il ne résout pas tous les problèmes, mais corrige les symptômes. Les problèmes existent encore, mais maintenant avec une couche de super-spécificité qui va prendre le dessus sur la spécificité déjà ajoutée.

Utiliser `!important` pour sortir d’une situation périlleuse, n’est pas conseillé. Retravaillez votre architecture CSS et essayez de lutter contre ces problèmes en refactorant vos sélecteurs.

## id

Les `id` ne sont d’aucune utilité et ne drevaient jamais être utilisés en CSS en raisont de leur spécificité accrue. Utiliser des `id` dans votre HTML pour vos ancres en JS peut être une bonne idée mais jamais en CSS.

Les raisons sont simples :

* Il n’y a qu’un seul ID par page.
* Les classes peuvent exister une seule, ou un million de fois par page.
* Les `id` sont spécifiques et il est beaucoup plus difficile de les réutiliser pour une autre partie de votre site.
* Un `id` est [255 fois plus spécifique qu’une classe](http://codepen.io/chriscoyier/pen/lzjqh) ...
* Cela signifie que vous aurez besoin d’un chaînage de 256 classes pour remplacer un `id`.

Si ce dernier point ne vous a pas convaincu alors je ne sais pas ce qu’il vous faut ...
Dès que je vois un ID dans une feuille de style, je le remplace par une classe. L’évolution des projets, ainsi que la spécifictité est une spirale que vous devez éviter à tout prix. Il est essentiel de maintenir un faible niveau de sélection.

Exercice de bled : Essayez de résoudre [ce problème](http://jsfiddle.net/csswizardry/9wGac/) de façon élégante.

## Noms de classe en vrac

Un nom de classe «&nbsp;en vrac&nbsp;» n’est pas assez précis pour son usage prévu. Imaginez une classe `.card`. Qu’est ce que cela fait ?
Ce nom de classe n’est pas assez précis. Son nommage est très mauvais pour deux raisons principales :

* Vous ne pouvez pas savoir son but avec le nom de classe seul.
* C’est tellement vague qu’il pourrait très facilement être redéfini accidentellement par un autre dev.

Le premier point est le plus simple. Que signifie `.card` ? Quelles sont ses propriétés ? Style ou mise en page ? Est-ce un concept où une carte est un composant ? Est-ce une classe que vous ajoutez à une carte à jouer sur un site de poker ? S’agit-il de l’image d’une carte de crédit ? Il est difficile de savoir, parce que c’est beaucoup trop vague. Dans l’exemple d’une carte de crédit, ce nommage est mieux : `.credit-card--image{}`. Beaucoup mieux oui, sans aucun doute !

Le deuxième problème avec les noms de classes en vrac, c’est qu’ils peuvent très facilement être (accidentellement) réaffectés / redéfinis. Disons que vous travaillez sur un site de e-commerce en utilisant à nouveau `.card`, qui est la carte de crédit de l’utilisateur lié à son compte. Maintenant, imaginez un autre dev arrive et veut ajouter des fonctionnalités permettant d’envoyer une commande à quelqu’un comme cadeau, avec la possibilité d’ajouter une carte avec un message à ce sujet. Il utilisera peut-être `.card` à nouveau quelque part, votre classe sera donc écrasée et difficilement identifiable.

Tout cela peut être évité en utilisant des noms de classe beaucoup plus stricts. Un nommage de classe comme `.user` et `.card` c’est bullsh$t : ils sont difficiles à comprendre rapidement, et facilement écrasés par accident.
Dès que je rencontre des noms de classe en vrac je me demande comment peut-on les renommer. Les noms de classes doivent être aussi précis que possible.

## En conclusion

Si votre CSS comporte de nombreux exemples de cas présentés ci dessus il y a de fortes chances qu’il soit malade. Ces exemples sont des choses que je rencontre de façon quotidienne et je m’efforce de les éviter à tout prix. Lorsque vous travaillez sur des projets plus importants qui durent depuis des mois et des mois (qui se transforment, finalement en années), il est essentiel de garder le cap, en conservant une vision globale du projet. (Plus vous éclatez vos composants en petits modules plus il sera facile de faire de la maintenance.)

Bien sûr, il y a des exceptions à toute règle, mais elles doivent êtres évaluées au cas par cas. Pour la plupart, je travaille dur pour les éviter.

Maintenant il est temps de prêcher à votre tour la bonne parole en suivant ces précieux conseils.

Si vous souhaitez en savoir encore plus sur les bonnes pratiques CSS, je vous invite à visiter [guidecss.fr](http://guidecss.fr/) qui présente encore plus de bonnes pratiques et de conseils pour un CSS évolutif et correctement architecturé.
