---
date: 2012-03-16 16:07:02+00:00
slug: webdesign-adaptatif-5-astuces-indispensables
title: 'Webdesign adaptatif : 5 astuces indispensables'
page_title: 5 astuces indispensables de design adaptatif

---

Depuis l'année dernière, la tendance est au webdesign adaptatif.
Avec la sortie du [nouvel iPad](http://www.youtube.com/watch?v=JfsLiW00lZ4)  et l'explosion du marché [téléphone mobile](http://mobile.free.fr/), cette tendance <del>devrait</del> doit devenir la norme d'ici la fin de l'année. Si les travailleurs du web ne plongent pas dans ces nouvelles pratiques, je parie sur un beau [IE6 revival](http://www.alsacreations.com/actu/lire/1394-web-ouvert-css-webkit.html) pour leurs sites internet.

Voici **5 conseils** pour vous aider à créer un design de qualité, accessible et adaptable.

Vous apprendrez dans cet article :




  * Comment **cacher du contenu** pour les petits écrans ?


  * Créer **des blocs de contenu adaptable** pour faire un meilleur usage des écrans mobiles.


  * **L'échelle des images** proportionnelle à la largeur d'écran disponible.


  * Comment créer **des images adaptatives **(optimisés pour les différentes tailles d'écran, la vitesse du réseau, etc ...)


  * Ajuster les **polices de caractères** en fonction de la largeur du navigateur.


Avant de commencer la lecture de cet article je vous invite à visiter le[ site smashing magazine](http://www.smashingmagazine.com/).
Mettez la fenêtre de votre [browser](http://www.mozilla.org/fr/firefox/fx/) en plein écran et redimensionnez la afin d'avoir moins de 480 pixels : magique ?
Non, c'est du webdesign adaptatif.
Pour maîtriser la technique de changement du contenu installez vous confortablement et prenez des notes !




### Cacher du contenu


Au XXème siècle, le contenu était optimisé pour une taille d'écran de 1024*768px.
De nos jour, il faut que l'information s'affiche aussi bien sur un écran 27 pouces que sur un smartphone. La première solution est de **masquer** la partie de votre site qui n'est pas indispensable.

[caption id="attachment_422" align="aligncenter" width="400" caption="La sidebar ne s'affiche plus"][![La sidebar ne s'affiche plus](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup1.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup1.png)[/caption]



Utilisez la propriété CSS display:none en fonction de la taille de votre périphérique.

[caption id="attachment_408" align="aligncenter" width="463" caption="Propriété CSS display:none;"][![Propriété CSS display:none;](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode1.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode1.png)[/caption]




### L’effondrement du contenu


Au lieu de cacher un bloc de contenu pour les fenêtres étroites, vous pouvez utiliser une méthode moins destructive et **réduire** le contenu. Je vous conseille d'utiliser la même méthode que le site de [wikipédia mobile](http://en.m.wikipedia.org/wiki/Web_design) : Laisser le titre de la catégorie et permettre à l'utilisateur d'explorer son contenu.

[caption id="attachment_423" align="aligncenter" width="492" caption="L’effondrement de contenu"][![L'éffondrement de contenu](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup2.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup2.png)[/caption]



Lorsque l'utilisateur tape le titre, le bloc se développe

Pour créer un bloc pliable vous devez combiner CSS et Javascript.




  * Contenu HTML


[caption id="attachment_426" align="aligncenter" width="425" caption="Contenu HTML"][![Contenu HTML](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2_1.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2_1.png)[/caption]




  * Javacript


[caption id="attachment_427" align="aligncenter" width="738" caption="La fonction formatSidebar()"][![La fonction formatSidebar()](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2.png)[/caption]

Utilisez [jquery](http://jquery.com/) pour vous aider à créer votre barre pliable verticale.
Dès que le DOM est prêt on initialise la variable "collapsed" ce qui permet de savoir si notre bloc est caché ou non.
C'est la fonction formatSidebar() qui permet de gérer tout les différents comportements du browser.




  * CSS


[caption id="attachment_428" align="aligncenter" width="693" caption="Le sprite CSS pour le style"][![Le sprite CSS pour le style](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2_css.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode2_css.png)[/caption]



Les 2 règles CSS permetttent de visualiser l'état de la sidebar.
Si elle est masquée on affiche un "+" qui invite l'utilisateur à voir le contenu caché.
On utilise un [sprite CSS](http://www.alsacreations.com/tuto/lire/1068-sprites-css.html) car c'est une bonne pratique :)




### L'échelle des images


Une autre astuce facile à mettre en place rapidement dans la conception d'interface fluide est d'utiliser une échelle pour les images.

[caption id="attachment_424" align="aligncenter" width="424" caption="Redimensionner les images"][![Redimmensionner les images](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup3.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup3.png)[/caption]

La façon la plus simple pour redimensionner l'image est d'ajouter la ``propriété CSS `max-width` à l'élément `img`, et de donner la propriété une valeur de **pourcentage**.
Le navigateur détermine ainsi la taille de l'image par rapport à l'élément parent.
La hauteur de l'image est ajustée automatiquement.

[caption id="attachment_429" align="aligncenter" width="248" caption="La classe image en pourcentage"][![La classe image en pourcentage](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode3_css.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode3_css.png)[/caption]




### Des images adaptatives


Le redimensionnement en pourcentage possède des avantages mais aussi des inconvénients :




  * C'est le navigateur qui redimensionne l'image cela consomme du [CPU](http://fr.wikipedia.org/wiki/Processeur)


  * Si votre image est en HD la consommation de bande passante explose


La solution la plus pertinente à ce problème est d'avoir une image pour chaque type de périphérique.
Un groupe sur [gitHub](http://fr.wikipedia.org/wiki/Git) développe ce concept d['image responsable](https://github.com/filamentgroup/Responsive-Images).

[caption id="attachment_430" align="aligncenter" width="590" caption="La magie d'apache sur les images"][![La magie d'apache sur les images](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode4.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/imgCode4.png)[/caption]

Voici la procédure pour installer le script :




  1. Téléchargez les fichiers `.htaccess` et `responsiveimgs.min.js`  à partir du [la page GitHub](https://github.com/filamentgroup/Responsive-Images)


  2. Ajoutez le `.htaccess`  à la racine de votre site Web


  3. Inclure le script `responsiveimgs.min.js` dans votre header de site.


  4. Vous pouvez créer deux versions de chaque image :
(1) La version grande pour les navigateurs de bureau (`hd.jpg`)
(2) une version réduite pour les navigateurs mobiles (`small.jpg` )


  5. Partout où vous souhaitez insérer une image dans votre page,
utilisez `<img src="small.jpg?full=hd.jpg">`


  6. Lorsque votre page se charge, le script d'image détecte si la largeur de l'écran est "petite" (480 pixels ou moins par défaut) ou "grande".


  7. Si le script détecte un "petit" écran, rien ne se passe.
Le navigateur récupère la petite image spécifiée dans la balise `img` (`small.jpg`) et l'affiche.


  8. Si le script détecte un "grand" écran,
la magie d'Apache [mod_rewrite](http://www.elated.com/articles/mod-rewrite-tutorial-for-absolute-beginners/) redirige toutes les requêtes serveur d'images avec un ? vers les grandes images (`hd.jpg`)`
`


[caption id="attachment_432" align="aligncenter" width="302" caption="Sur mobile l'image est "small""][![Sur mobile l'image est "small"](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup4.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/mokup4.png)[/caption]

Résultat :  les appareils mobiles vont chercher la version optimisée mobile  de votre image, alors que les navigateurs de bureau sont redirigés vers l'image HD.




### Les polices de caractères


En suivant la méthode d'échelle des images, il est possible de redimensionner le texte pour faire un meilleur usage de l'espace disponible.
Il est préférable de faire des petits ajustements concernant la taille de la police. Si elle est trop petite vos visiteurs auront du mal à lire.

[caption id="attachment_434" align="aligncenter" width="416" caption="Le % des polices de caractère"][![Le % des polices de caractère](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/font.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/03/font.png)[/caption]


### Conclusion


Dans cet article, vous avez exploré 5 façons d'améliorer vos mises en page Web sensibles.




  * La propriété CSS `display:none` dans les requêtes des médias pour** masquer le contenu**.


  * Création **de blocs démontables** en utilisant JavaScript et CSS pour emballer plus de contenu sur écrans mobiles.


  * **L'échelle des images** avec le `max-width` propriété et des largeurs de pourcentage. Les images restent proportionnelles à la taille du [browser](http://www.mozilla.org/fr/firefox/fx/).


  * Utilisation de JavaScript et d'Apache mod_rewrite pour créer des **images adaptatives **: les navigateurs de bureau affichent une image HD, alors que les navigateurs mobiles reçoivent une version basse résolution.


  * Réglage de **la taille de police** pour monter plus de texte sur les petits écrans et adapter la taille des polices aux grands.


Avec ces conseils,  vous êtes bien placé pour créer de fantastiques sites adaptatifs qui se ressemblent indépendamment du  périphérique utilisé.

And now open notepad++ !


