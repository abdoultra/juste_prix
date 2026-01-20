import 'dart:io';
import 'dart:math';

void trouverLeNombreSecret() {
  Random random = Random();
  int nombreSecret = random.nextInt(100) + 1;
  int compteur = 0;

  print("J'ai choisi un nombre entre 1 et 100.");

  while (true) {
    stdout.write("Donne un nombre : ");
    String? input = stdin.readLineSync();

    if (input == null) continue;

    int? codeClient = int.tryParse(input);
    if (codeClient == null) {
      print("Veuillez entrer un nombre valide.");
      continue;
    }

    compteur++;

    if (codeClient > nombreSecret) {
      print("Trop grand, diminue.");
    } else if (codeClient < nombreSecret) {
      print("Trop petit, augmente.");
    } else {
      break;
    }
  }

  print("Bravo ! Le nombre secret était $nombreSecret.");
  print("Nombre d'essais : $compteur");
}

void main() {
  trouverLeNombreSecret();
}

