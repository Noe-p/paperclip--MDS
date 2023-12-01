import 'package:flutter/material.dart';
import 'package:paperclip/inventaires.dart';
import 'package:paperclip/main.dart';
import 'package:paperclip/recettes.dart';
import 'package:paperclip/utils.dart';
import 'package:provider/provider.dart';

class Ressources extends StatelessWidget {
  const Ressources({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Ressources'),
            backgroundColor: Colors.black,
            leading: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.handyman),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Recette()));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.inventory),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Inventaire()));
                  },
                ),
              ],
            )),
        body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
          ),
          children: [
            Ressource(
                color: hexToColor('#967969'),
                name: 'Bois',
                counter: Provider.of<MyAppState>(context).boisCounter,
                type: 'bois'),
            Ressource(
                color: hexToColor('#ced4da'),
                name: 'Fer',
                counter: Provider.of<MyAppState>(context).ferCounter,
                type: 'fer'),
            Ressource(
                color: hexToColor('#d9480f'),
                name: 'Cuivre',
                counter: Provider.of<MyAppState>(context).cuivreCounter,
                type: 'cuivre'),
            Ressource(
                color: hexToColor('#000000'),
                name: 'Charbon',
                counter: Provider.of<MyAppState>(context).charbonCounter,
                type: 'charbon'),
          ],
        ),
      ),
    );
  }
}

class Ressource extends StatefulWidget {
  const Ressource({
    super.key,
    required this.color,
    required this.name,
    required this.counter,
    required this.type,
  });

  final Color color;
  final String name;
  final int counter;
  final String type;

  @override
  State<Ressource> createState() => _RessourceState();
}

class _RessourceState extends State<Ressource> {
  void incrementCounter(String type) {
    var appState = Provider.of<MyAppState>(context, listen: false);
    appState.incrementCouter(type);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  incrementCounter(widget.type);
                },
                child: const Text('Miner')),
            Text(
              '${widget.counter}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
