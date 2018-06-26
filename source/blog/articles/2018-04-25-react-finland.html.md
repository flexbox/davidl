---
date: 2018-04-25
slug: react-finland
title: React Finland 2018 mission Helsinki
description: Sketchnoting depuis la Finlande à la rencontre de la communauté React
image: https://lh3.googleusercontent.com/K439xQg_ISOZqR4Wd50fifsPiPSJ9pzbMeWvbshjRlHMl1JNijOmpFtQYMplkycCG32mslBmL0xREIqDQDxE5y3S4MaQATnFyts8aMuNrI0kwsnN_XRg7MGcO6zFR_roZZ3s7siZcYM4dDqzP2r4qqJ3EQ19PZ02OEAFoivC6DO7yzF2gNctjnJ320eIkwmKEIBy2LFB5mQhNTbXmTQXaTXZb1cqKaVYDE9ZodbgC5v706-kbWEiT_er9FeD5NWD1GkBACWEFYqef4zKsxDXJ0ivkwiBxXp2ZYDvxGTiET11ZHzGa_Mi-UessQHp1exbE5ZkcLysLH0jLfpu_-VMAxKkZ2MElCo0Nopq65aNhXC72891CcYZuiUP0ThgOGk4iFQVDj_9RK4cDSMMiQJqBHKbNc5HopuE4aZgZtQg_k6ZBgRzGLKNWCZH7P6WH-M0M64s1krPGNKzPjdCGokZM2zQui6UpukTUKyuRv5WQViG46cPtdjC7mr-M79fSRfQhQ6Lf3WlxFoqDu16Z6TPNq55RMSGkEtDOFEzSBvLETVUR-HchDiRpL6LcNokYh4JYpPROdAb28ro5rBC-ZssLjTalLhgH00IbeIxSPbe=w1024-h512-no
page_title: It’s sort of a hack but it worked
page_emphasis: La première édition de React Finland avec des buzzworld comme Apollo, GraphQL, Redux, MobX, Blockchain…
---

MOI-moi 👋

Cette semaine, j'étais à Helsinki à la rencontre de la communauté React de Finlande.

J'ai rédigé un article en anglais sur la première journée de workshop.
Si vous souhaitez en savoir plus sur des sujets comme :

- __Style Guide Design Workflow__
- __React Native__

Vous pouvez [lire mon article medium à propos de la première journée de workshop](https://medium.com/@flexbox/react-helsinki-2018-19c6f07faaf8).
Je partage ici le reste des mes liens / sketchnotes sur ces 3 jours de conférence.

## The new best practices in React

TLDR;
[@jevakallio](https://twitter.com/jevakallio) nous conseille de se concentrer sur votre produit et non sur les outils.

![React Finland 2018 sketchnoting ](https://c1.staticflickr.com/1/966/41689111711_599a6abf15_c.jpg)

## Immutability made EASY with Immer

Comment pouvez vous simplifier votre `reducer`? En ajoutant une nouvelle [librairie pour gérer l'immutabilité](https://github.com/mweststrate/immer).

![React Finland 2018 sketchnoting declarative ](https://c1.staticflickr.com/1/982/40792066945_7c6537b884_c.jpg)

## Styled components, Server Side Rendering and theming

Je dois avouer que je ne comprennais pas la guerre `css-in-js` Versus le reste du monde.
Écrire du css en JavaScript? Après tout quand on utilise react on code du `JSX` donc yolo !

[Kasia Jastrzębska](https://twitter.com/kejt_bw) à changé ma vision avec son [talk sur les styled components](https://www.dropbox.com/s/2f7xgskbgrnnrez/styled-components-reactfinland.pdf?dl=0).

_Exemple_ : Vous souhaitez faire une application accessible avec un theme de couleur qui change en fonction de l'heure de la journée ? (Comme l'application [flux sur macOS](https://justgetflux.com/))

Challenge accepted avec les [styled-components](https://www.styled-components.com/).

![React Finland 2018 sketchnoting Styled components](https://c1.staticflickr.com/1/943/27823626868_e39e78d0b1_c.jpg)

## Universal React app with Next

J'ai déjà travaillé avec [React et Nextjs](/blog/fabriks.html) et l'expérience utilisateur est juste folle !

Pourquoi ?

Car le `server-side rendering` et le `code-splitting` améliore considérablement le temps de chargement.

![React Finland 2018 sketchnoting JavaScript next framework](https://c1.staticflickr.com/1/961/39885714910_22424951a4_c.jpg)

Envie de créer votre première application avec Next.js? Télechargez le [repo d'exemple à cette adresse](https://github.com/siakaramalegos/nextjs-workshop-demo).

## Make linting great again

Vous souhaitez lancer un `eslint --fix` à chaque commit pour éviter d'avoir une erreur avec votre CI? __[lint-staged](https://github.com/okonet/lint-staged)__ est la solution à votre problème 😉

![React Finland 2018 sketchnoting linting](https://c1.staticflickr.com/1/982/26829193917_f5642b6bc5_c.jpg)

## React Native Ignite

Certainement pour moi la partie la plus mind-blowing de cette conférence qui va m'aider à résoudre 2 points douloureux avec React Native : le __setup d'un nouveau projet__ et le __debug__.

![React Finland 2018 sketchnoting React Native Ignite](https://c1.staticflickr.com/1/949/41678260852_c1b2d2d338_c.jpg)

### Scaffolding d'une application `react-native`

Avec le CLI Ignite vous avez le choix entre 2 templates :

- __Bowser boilerplate__
  - React Native
  - React Navigation
  - Mobx State Tree
  - Typescript

- __Andross boilerplate__
  - React Native
  - React Navigation
  - Redux
  - Redux Sagas

Je vous conseille de regarder la documentation d'[Ignite disponible sur GitHub](https://github.com/infinitered/ignite)

### Debugger votre application React Native

Avec du natif c'est compliqué d'ouvrir la console chrome pour debug votre code JavaScript.

Pas de panique ! Avec l'[application reactotron](https://github.com/infinitered/reactotron) vous pouvez inspecter facilement vos applications React et React Native.
