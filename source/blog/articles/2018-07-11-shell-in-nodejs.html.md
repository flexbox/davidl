---
date: 2018-07-11
slug: shell-in-nodejs
title: Executer un script unix en Node.js
description: Automatiser ses script de release avec Node.js
image: https://lh3.googleusercontent.com/OuE0HXCKkR8P4B0ehi5ibNBnY_om_jPequ3-wNtfb7AQYI2-weP6hnhRKfHywX1-5PEARpAEblOjqWVXl3gnuRwOanDwLFyBdpC9CF1fJ3rwxz_KRL_1qG55HzVLeF9hHjWSqnznpQmWaQ3lx_5xLj09hOTTsvGdaTgN4TbhXu8eECX2UPQbRZqnj6DPfHMKujNZo0U8kbQOAfmi74mpEG9vJIWn7DKLj_z6uac3EuNy89E_jay5NceZNsJTLjTzhZ0z1m2MbmOdNAE4r9TgbNUtunuZjyIFBkjJJ1gpmZaug5HPSHiva7PG7ka78FwJQuBkWAsBA7jYM-K296m5uC-e1oCd1Hf4SZzSq2mHVS0KA6odqbgQbGHzpf9dXMznH8xMI6hIneTfMBIczOnOd4rsVoiCb32T7gxMjAXKwmKHRakzUopVshk8whoi6rocaQsy5otJ7okkg6YSGDfzUBdhXyB3Q-5g9aXKMfymW5rV9F0P-OhDORo0B-DO11kvLRcC65O5lGdsZvtCrPJ8NmIaZJCGyL_ULRhcWW9oNoj5PFKmIPeIKFK0NvQW-93pEqNVXpg3bVgyNtXZHLgJ1irS5pW0EhKkVVxMHEE7=w1024-h512-no
page_title: I have a script for that™️
page_emphasis: Le terminal c'est la vie
---

J'ai récemment publié un article sur medium : [Comment déployer votre application React Native avec Expo](https://medium.com/@flexbox/react-native-expo-1734e6d7891). Afin d'automatiser mon script de release j‘ai perdu pas mal de temps sur stackoverflow en faisant des copier / coller de scripts bash.

Et puis j'ai réfléchi 2 minutes :

> Je ne suis pas un nerd qui fait du bash avec vim, je fais du front-end sur sublime text. <br>
> Je devrais utiliser Node.js"

Si vous souhaitez __utiliser JavaScript pour exécuter des commandes UNIX__ depuis un terminal voici un petit snippet qui vous sera utile.

~~~javascript
  #!/usr/bin/env node

  const exec = require('child_process').exec;
  function puts(error, stdout, stderr) { console.log(stdout) }

  exec('ls -l', puts);
~~~
