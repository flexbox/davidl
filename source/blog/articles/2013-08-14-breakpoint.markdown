---

date: 2013-08-14 16:30:38+00:00

slug: breakpoint
title: Vérification des breakpoint en javascript avec valeures définies en CSS
wordpress_id: 1187
categories:
- codage
---

### Faites une connexion entre votre CSS et Javascript




Nous avons un problème dans la conception adaptative : Les breakpoint sont fixés en CSS et nous devons exécuter certaines actions en javascript.
pokemonbreakpoint est une façon amusante de faire le lien entre les 2 mondes.




## Une règle pour les attraper tous




Votre naming est crucial pour votre application.
Il faut définir vos variables dans un fichier. J'utilise sass qui me permets d'utiliser des variables et généralement je nomme ce fichier `_settings.scss`.




    <code>$small-screen: 641px !default;
    $medium-screen: 1280px !default;
    $large-screen: 1440px !default;</code>




Maintenant, nous devons trouver un emplacement pour l'élément qui accueillera votre variable. Vous pouvez choisir l'élement `body:after` mais pour être plus votre j'ai décidé de l'associer à un id `#media-query--name`.
Dans votre fichier `_breakpoint.scss` remplacez `#media-query--name:after` Par votre nouveau naming explicite




    <code>@media #{$small} {
      #media-query--name:after{
        content: "reptincel";
      }
    }</code>




## Comment ça marche ?






  1. Ouvrez [pokemonbreakpoint](http://pokemonbreakpoint.fr) dans un nouvel onglet


  2. Identifier l'élément animé avec des flames `#media-query--name`.


  3. Maintenant on passe au javascript




En cliquant sur le lien vous lancez la fonction `pokeball()` ...




    <code>if (pokemon == '"reptincel"') {
      alert("Je suis le pokemon " + pokemon + " correspondant à une tablette");
    };</code>




... qui extrait les informations définies dans `gottaCatchThemAll(element)`.




    <code>function gottaCatchThemAll(element){
      var media_query = document.getElementById(element);
      var css_prop = window.getComputedStyle(media_query,':after').getPropertyValue('content');
      return css_prop;
    }</code>




## Le code source




C'est hébergé sur [github](https://github.com/flexbox/pokemon-breakpoint). N'hésitez pas à me faire un retour si vous rencontrez des bugs.



