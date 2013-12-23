---
date: 2012-06-22 16:06:56+00:00
slug: integration-emails
title: 7 bonnes pratiques pour des emails de qualité
page_title: Réussir l'intégration de ses emails
---

De nos jours envoyer des emails reste laborieux tant dans la partie créative que la partie code : la taille de la création est limitée, et les styles doivent être codés inline :

    <a href="#" style="color: red;padding:0 0 10px 0;">Mon beau texte rouge</a>

Pas folichon niveau création / débug. Heureusement il existe des bonnes pratiques qui vous permettrons de créer un template d'email de qualité pour vos futures campagnes de communication.

## Remplir les balises alt

[![Newsletter pour une mise à jour de Firefox](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/alt.png)

Afin d'identifier rapidement vos éléments il faut remplir __toutes vos balises alt__. Cela évite de se retrouver en spam ? (à vérifier) et permet de ne pas avoir d'espace sans contenu.


## Ne pas fixer de taille pour les images


A l'ouverture de l'email les images ne sont pas affichées. Pour éviter de faire scroller l'utilisateur et avoir un **contenu accessible**, il suffit de ne pas spécifier de taille à vos images.


    <img src="monImage.jpg" />


## Taille de la newsletter


[![Le webmail de Google : gmail](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/webmail-300x138.png)](http://www.flickr.com/photos/25295258@N04/3327764520/)

Beaucoups de personnes (dont moi) n'utilisent plus de client type thunderbird pour la consultation d'emails. L'email se lit "on the fly" sur tablette, mobile ou à l'aide du client web comme hotmail.
La taille maximale recommandée pour s'adapter à cet écosystème est **600px** de large.


## Changer la couleur des liens


[![Visitez mon site :)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/link.png)](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/link.png)

Comme je l'ai expliqué en introduction le style des balises doit être inline.
Pour changer la couleur de vos liens une seule solution : à la main et un par un.


    <a href="http://davidleuliette.com/" style="color:#f08c00;text-decoration:none;">Visitez mon site</a>


## Utiliser des caractères spéciaux


![Le codage des caractères](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/entityHTML-300x128.png)

Le corps de votre email c'est du texte. Vu la multitude de possibilités de plate-forme d'envoi et / ou de réception ne cherchez pas midi à 14h pour votre encodage de caractère : [encodez avec des entités HTML](http://responsiveicon.fr).

Passez votre texte à la moulinette avec [htmlentities](http://htmlentities.net/) pour encoder correctement vos accents.


## Supprimer la ligne de vide des images

![Hotmail hack](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/hotmail-300x118.png)

Chaque webmail possède ses spécification et son moteur de rendu. Hotmail et gmail ont la facheuse tendance à ajouter un padding  sur les images.

Pour régler ce problème voici le hack :

    <img src="monimage.jpg" style="display:block;" />


## Gmail hack

[![Comment avoir un titre accrocheur ?](http://davidleuliette.com/wordPress/wp-content/uploads/2012/06/voirlaversionenligne.png)

Dans l'entête d'email il faut un lien pour voir la version en ligne.
Comment contourner ce problème pour afficher un titre accrocheur ?
Utilisez un image de 1px sur 1px et remplissez la balise alt. Veuillez bien à la mettre en premier dans votre code.

    <img src="spacer.gif" alt="Mon titre donne envie de lire donc je clique" />



## Partir sur de bonnes bases


Commencez par visiter les conseils de gourous sur le site [html email boilerplate](http://htmlemailboilerplate.com/).

Vérifiez bien la [compatibilité CSS](http://www.campaignmonitor.com/css/) de vos balises.
