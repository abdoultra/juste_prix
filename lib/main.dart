import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Le Juste Prix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const JustePrixPage(title: 'Le Juste Prix'),
    );
  }
}

class JustePrixPage extends StatefulWidget {
  const JustePrixPage({super.key, required this.title});
  final String title;

  @override
  State<JustePrixPage> createState() => _JustePrixPageState();
}

class _JustePrixPageState extends State<JustePrixPage> {
  final TextEditingController controller = TextEditingController();

  late int nombreSecret;
  int tentatives = 0;
  String message = "Devinez un nombre entre 1 et 100";

  @override
  void initState() {
    super.initState();
    nouvellePartie();
  }
  void nouvellePartie() {
    setState(() {
      nombreSecret = Random().nextInt(100) + 1;
      tentatives = 0;
      message = "Devinez un nombre entre 1 et 100";
      controller.clear();
    });
  }

  void verifierNombre() {
    int? proposition = int.tryParse(controller.text);

    if (proposition == null) {
      setState(() {
        message = "Veuillez entrer un nombre valide";
      });
      return;
    }

    setState(() {
      tentatives++;

      if (proposition < nombreSecret) {
        message = "Votre choix est trop bas. augmentez !";
      } else if (proposition > nombreSecret) {
        message = "Votre choix est trop haut. diminuez !";
      } else {
        message = "Bravo ! Vous avez trouvé en $tentatives tentative(s)";
      }

      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Votre proposition',
              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: verifierNombre,
              child: const Text('Valider'),
            ),
            const SizedBox(height: 16),

            Text('Tentatives : $tentatives'),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: nouvellePartie,
              child: const Text('Nouvelle partie'),
            ),
          ],
        ),
      ),
    );
  }
}
