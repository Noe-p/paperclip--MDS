import 'package:flutter/material.dart';
import 'package:paperclip/main.dart';
import 'package:provider/provider.dart';

class Inventaire extends StatelessWidget {
  const Inventaire({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Inventaire'),
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          body: ListView(
              padding: const EdgeInsets.all(20),
              children: Provider.of<MyAppState>(context)
                  .inventaire
                  .map((item) => InventaireItem(
                      name: item['name'], quantity: item['quantity']))
                  .toList())),
    );
  }
}

class InventaireItem extends StatelessWidget {
  const InventaireItem({super.key, required this.name, required this.quantity});

  final String name;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        Text(quantity.toString()),
      ],
    ));
  }
}
