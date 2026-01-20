# Le Juste Prix – Application Flutter

Application mobile développée avec Flutter dans le cadre d’un exercice pédagogique.  
Le joueur doit deviner un nombre aléatoire généré par l’application, avec des indications à chaque tentative.

Le projet est compatible Android et iOS.

---

## Objectif du projet

L’objectif de ce projet est de mettre en pratique :
- la gestion de l’état dans Flutter,
- l’interaction utilisateur via des formulaires,
- la logique conditionnelle,
- la structuration d’une application mobile simple et fonctionnelle.

Ce projet permet de consolider les bases du développement mobile cross-platform avec Flutter.

---

## Fonctionnalités

- Génération d’un nombre aléatoire entre 1 et 100 au lancement du jeu
- Champ de saisie pour proposer un nombre
- Bouton de validation de la proposition
- Indications dynamiques :
  - trop petit
  - trop grand
  - bonne réponse
- Compteur du nombre de tentatives
- Bouton pour démarrer une nouvelle partie
- Réinitialisation complète de l’état du jeu

---

## Logique du jeu

- Un nombre secret est généré aléatoirement
- À chaque proposition :
  - si le nombre est inférieur au nombre secret, un message indique d’augmenter
  - s’il est supérieur, un message indique de diminuer
  - s’il est correct, un message de victoire s’affiche avec le nombre de tentatives
- Le champ de saisie est vidé après chaque tentative
- Une nouvelle partie réinitialise le nombre, le compteur et les messages

---

## Technologies utilisées

- Flutter
- Dart
- Material Design
- StatefulWidget
- TextEditingController
- dart:math pour la génération aléatoire

---
lib/
└── main.dart

L’ensemble de la logique de l’application est contenu dans le fichier `main.dart`.

---

## Installation et exécution

### Prérequis
- Flutter installé
- Android Studio ou VS Code
- Un émulateur Android ou iOS, ou un appareil physique

### Lancer le projet

```bash
flutter pub get
flutter run

Compatibilité

Android
iOS
web

Auteur

Abdoulaye Traoré
Étudiant en Bachelor Développement Web à MyDigitalSchool Paris
Profil GitHub : https://github.com/abdoultra
## Structure simplifiée

