# Paperclip

## Description

Ce projet est une application mobile de type clicker game. Le but est de cliquer sur un bouton pour miner des ressources et fabriquer des recettes.
Il a été réaliser dans le cadre d'une évaluation de la matière 'Devéloppement Natif' de la 2ème année de la formation 'MBA Développeur Full Stack' à MyDigitalSchool de Rennes.

## Installation

Lancer les commandes suivantes :

```bash
flutter pub add provider
flutter pub get
flutter pub deps
```

Puis, lancer l'application :

```bash
flutter run
```

## Architecture

- `lib` : code source
  - `datas` : données de l'application (recettes)
  - `inventaires.dart` : Page d'inventaire
  - `main.dart` : Point d'entrée de l'application
  - `recettes.dart` : Page de recettes
  - `ressources.dart` : Page de ressources
  - `utils.dart` : fonctions utilitaires

## Fonctionnalités

### main.dart

Dans le `main.dart`, j'ai mis en place le provider qui permet de gérer les données de l'application.
On y retrouve, les différents compteurs (bois, fer, etc.), la liste d'inventaire et les différentes fonction pour interagir avec ces données.

### ressources.dart

Dans le `ressources.dart`, j'ai mis en place la page de ressources. C'est ici que l'on peut voir les compteurs de ressources et les boutons pour les incrémenter.

### recettes.dart

- Dans le `recettes.dart`, j'ai mis en place la page de recettes. C'est ici que l'on peut voir les différentes recettes et les boutons pour les fabriquer.
- On peut y accéder en cliquant sur l'icone à gauche dans la barre de navigation.
- Le bouton 'Miner' est désactivé tant que l'on a pas assez de ressources pour fabriquer la recette.
- Quand on clique sur le bouton 'Miner', les ressources sont décrémentées et l'inventaire est incrémenté.

### inventaires.dart

- Dans le `inventaires.dart`, j'ai mis en place la page d'inventaire. C'est ici que l'on peut voir les différentes ressources que l'on a en stock.

## Difficulté rencontrées

- Bizarrement, pas facile d'utiliser les couleurs hexadécimales.
- Je me suis arrêté à l'étape 6.
