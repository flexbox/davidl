---
date: 2012-03-16 16:07:02+00:00
slug: webdesign-adaptatif-5-astuces-indispensables
title: 'Webdesign adaptatif : 5 astuces indispensables'
page_title: "Responsive webdesign : 5 astuces indispensables"
changefreq: monthly
priority: 0.8
---

Depuis l'année dernière, la tendance est au webdesign adaptatif.
Avec la sortie du [nouvel iPad](http://www.youtube.com/watch?v=JfsLiW00lZ4)  et l'explosion du marché [téléphone mobile](http://mobile.free.fr/), cette tendance <del>devrait</del> doit devenir la norme d'ici la fin de l'année. Si les travailleurs du web ne plongent pas dans ces nouvelles pratiques, je parie sur un beau [IE6 revival](http://www.alsacreations.com/actu/lire/1394-web-ouvert-css-webkit.html) pour leurs sites internet.

Voici **5 conseils** pour vous aider à créer un design de qualité, accessible et adaptable.

Vous apprendrez dans cet article :

- Comment **cacher du contenu** pour les petits écrans ?
- Créer **des blocs de contenu adaptable** pour faire un meilleur usage des écrans mobiles.
- **L'échelle des images** proportionnelle à la largeur d'écran disponible.
- Comment créer **des images adaptatives** (optimisés pour les différentes tailles d'écran, la vitesse du réseau, etc ...)
- Ajuster les **polices de caractères** en fonction de la largeur du navigateur.

Avant de commencer la lecture de cet article je vous invite à visiter le[ site smashing magazine](http://www.smashingmagazine.com/).
Mettez la fenêtre de votre [navigateur](http://www.mozilla.org/fr/firefox/fx/) en plein écran et redimensionnez la afin d'avoir moins de 480 pixels : magique ?

Non, c'est du webdesign adaptatif.

Pour maîtriser la technique de changement du contenu installez vous confortablement et prenez des notes !


## Cacher du contenu

Au XXème siècle, le contenu était optimisé pour une taille d'écran de 1024*768px.
De nos jours, il faut que l'information s'affiche aussi bien sur un écran 27 pouces que sur un smartphone. La première solution est de **masquer** la partie de votre site qui n'est pas indispensable.

![La sidebar ne s'affiche plus](blog/legacy/2012/03/mokup1.png?raw=true?raw=true)


Utilisez la propriété CSS `display:none` en fonction de la taille de votre périphérique. (Dans ce ca si la fenêtre est inférieure à 480px)

    @media screen and (max-width: 480px) {
      .sidebar {
        display: none;
      }
    }

<div class="alert-box alert"><p>Attention n'abusez pas de cette technique car le contenu de la page sera téléchargé. Cela réduit les performances, notament en navigation mobile où le débit n'est pas toujours élevé.</p></div>

## L’effondrement du contenu

Au lieu de cacher un bloc de contenu pour les fenêtres étroites, vous pouvez utiliser une méthode moins destructive et **réduire** le contenu. Je vous conseille d'utiliser la même méthode que [wikipédia mobile](http://en.m.wikipedia.org/wiki/Web_design) : Afficher le titre de la catégorie et permettre à l'utilisateur d'explorer son contenu.

[![L'éffondrement de contenu](blog/legacy/2012/03/mokup2.png?raw=true)](blog/legacy/2012/03/mokup2.png?raw=true)

Lorsque l'utilisateur tape le titre, le bloc se développe.

Pour créer un bloc pliable vous devez combiner CSS et Javascript.

### Structure HTML

    <div id="sidebar">

      <div class="inner">
        <h2>Contactez-moi</h2>
        <p>Je m'engage à vous offir des fleurs en retour.</p>
      </div>

    </div>


### Comportement Javacript

[![La fonction formatSidebar()](blog/legacy/2012/03/imgCode2.png?raw=true)](blog/legacy/2012/03/imgCode2.png?raw=true)

Utilisez [jquery](http://jquery.com/) pour vous aider à créer votre barre pliable verticale.
Dès que le DOM est prêt on initialise la variable `collapsed` ce qui permet de savoir si notre bloc est caché ou non.
La fonction `formatSidebar()` permet de gérer tout les différents comportements du navigateur.

### Style CSS

[![Le sprite CSS pour le style](blog/legacy/2012/03/imgCode2_css.png?raw=true)](blog/legacy/2012/03/imgCode2_css.png?raw=true)

Les 2 règles CSS permetttent de visualiser l'état de la sidebar.
Si elle est masquée on affiche un "+" qui invite l'utilisateur à voir le contenu caché.
On utilise un [sprite CSS](http://www.alsacreations.com/tuto/lire/1068-sprites-css.html) car c'est une bonne pratique :)

## L'échelle des images

Une autre astuce facile et rapide, à mettre en place dans la conception d'interface fluide, est d'utiliser une échelle pour les images.

[![Redimmensionner les images](blog/legacy/2012/03/mokup3.png?raw=true)](blog/legacy/2012/03/mokup3.png?raw=true)

La façon la plus simple pour redimensionner l'image est d'ajouter la propriété CSS `max-width` à l'élément `img`, et de donner une valeure en **pourcentage**.
Le navigateur détermine la taille de l'image par rapport à l'élément parent.
La hauteur de l'image est ajustée automatiquement.

    .photo {
      max-width: 65%;
    }

## Des images adaptatives

Le redimensionnement en pourcentage possède des avantages mais aussi des inconvénients :

- C'est le navigateur qui redimensionne l'image cela consomme du [CPU](http://fr.wikipedia.org/wiki/Processeur)
- Si votre image est en HD la consommation de bande passante explose

La solution la plus pertinente à ce problème est d'avoir une image pour chaque type de périphérique.
La même problématique existe pour la gestion des vidéos. Pour être compatible avec tous les navigateurs, une vidéo doit être [encodée en 3 format différents](http://www.alsacreations.com/article/lire/1125-introduction-balise-video-html5-mp4-h264-webm-ogg-theora.html).

Un groupe sur [GitHub](http://fr.wikipedia.org/wiki/Git) développe ce concept d['image responsive](https://github.com/scottjehl/picturefill) en utilisant un polyfill pour créer le comportement d'une nouvelle balise : `picture`.

    <div data-picture>
        <span data-src="small.jpg"></span>
        <span data-src="medium.jpg"     data-media="(min-width: 400px)"></span>
        <span data-src="large.jpg"      data-media="(min-width: 800px)"></span>
        <span data-src="extralarge.jpg" data-media="(min-width: 1000px)"></span>

        <!-- Fallback pour les navigateurs sans Javascript -->
        <noscript>
            <img src="small.jpg">
        </noscript>
    </div>

![blog/legacy/2012/03/mokup4.png?raw=true](blog/legacy/2012/03/mokup4.png?raw=true)

Résultat : les appareils mobiles vont chercher la version optimisée mobile de votre image, alors que les navigateurs de bureau sont affichent l'image extralarge.

## Les polices de caractères

[![Taille de police de base](/assets/images/blog/2012/type-scale.png?raw=true)](http://webcitation.fr)

En suivant la méthode d'échelle des images, il est possible de redimensionner le texte pour faire un meilleur usage de l'espace disponible.
Il est préférable de faire des petits ajustements concernant la taille de la police. Si elle est trop petite vos visiteurs auront du mal à lire.

    body {
      font-size: 100%;
    }

    @media screen and (max-width: 480px) {
      body {
        font-size: 90%;
      }
    }

    @media screen and (min-width: 1000px) {
      body {
        font-size: 110%;
      }
    }

## Conclusion

Dans cet article, vous avez exploré 5 façons d'améliorer la mise en page de votre site web adaptatif.

- La propriété CSS `display:none` dans les requêtes des médias pour** masquer le contenu**.
- Création **de blocs démontables** en utilisant JavaScript et CSS pour emballer le contenu sur les écrans mobiles.
- **L'échelle des images** avec la propriété `max-width` et les largeurs de pourcentage. Les images restent proportionnelles à la taille du [navigateur](http://www.mozilla.org/fr/firefox/fx/).
- Utilisation de JavaScript avec le polyfill `picture` pour créer des **images adaptatives **: les navigateurs de bureau affichent une image HD, alors que les navigateurs mobiles reçoivent une version basse résolution.
- Réglage de **la taille de police** pour afficher plus de texte sur les petits écrans et adapter la taille des polices aux grands.

Avec ces conseils, vous êtes bien placé pour créer de fantastiques sites adaptatifs qui se ressemblent indépendamment du périphérique utilisé.
