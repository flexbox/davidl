---
date: 2012-07-02 16:34:00+00:00
slug: ios-guideline-mettre-une-icone-de-raccourci-pour-vos-applications-web
title: 'iOS guideline : icone pour applications web'
page_title: Intégrer une favicon avec une webapp
---

[![](http://davidleuliette.com/wordPress/wp-content/uploads/2012/07/5382639043_b671f6f3da.jpg)](http://www.flickr.com/photos/yishiang/5382639043/)

Sur les nouveaux devices qui envahissent le marché on peux facilement créer un raccourci pour avoir son site web favori directement sur l'écran d'accueil.

Vous pouvez tout à fait mettre votre favIcon en version HD !

Voici le code à mettre en place dans votre HTML :

    <!-- Favicons -->
    <link rel="icon" type="image/vnd.microsoft.icon" href="/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />

    <!-- iOS device -->
    <link rel="apple-touch-icon" href="/iphone-favicon.png"/>
    <link rel="apple-touch-icon-precomposed" href="/apple-touch-icon-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/apple-touch-icon-72x72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/apple-touch-icon-114x114-precomposed.png" />

Vous pouvez aussi lire la [documentation officielle iOS](https://developer.apple.com/library/ios/DOCUMENTATION/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html).
