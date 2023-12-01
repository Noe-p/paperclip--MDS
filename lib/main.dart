import 'package:flutter/material.dart';
import 'package:paperclip/ressources.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MyAppState extends ChangeNotifier {
  var boisCounter = 0;
  var ferCounter = 0;
  var cuivreCounter = 0;
  var charbonCounter = 0;
  final List<Map<String, dynamic>> inventaire = [];

  void incrementCouter(String counter) {
    switch (counter) {
      case 'bois':
        boisCounter++;
        break;
      case 'fer':
        ferCounter++;
        break;
      case 'cuivre':
        cuivreCounter++;
        break;
      case 'charbon':
        charbonCounter++;
        break;
    }
    notifyListeners();
  }

  void decrementCouter(
    String counter,
    int howMany,
  ) {
    switch (counter) {
      case 'bois':
        boisCounter -= howMany;
        break;
      case 'fer':
        ferCounter -= howMany;
        break;
      case 'cuivre':
        cuivreCounter -= howMany;
        break;
      case 'charbon':
        charbonCounter -= howMany;
        break;
    }
    notifyListeners();
  }

  void addToInventaire(String name, int quantity) {
    inventaire.add({'name': name, 'quantity': quantity});
    notifyListeners();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 184, 172, 203)),
            useMaterial3: true,
          ),
          home: const Ressources(),
        ));
  }
}
