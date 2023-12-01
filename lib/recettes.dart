import 'package:flutter/material.dart';
import 'package:paperclip/datas/recettesDatas.dart';
import 'package:paperclip/main.dart';
import 'package:provider/provider.dart';

class Recette extends StatelessWidget {
  const Recette({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Magasin'),
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          body: ListView(padding: const EdgeInsets.all(20), children: [
            for (var item in RecettesDatas.items)
              RecetteItem(
                  name: item['name'],
                  costs: item['costs'],
                  gameplay: item['gameplay'],
                  type: item['type'],
                  description: item['description']),
          ])),
    );
  }
}

class RecetteItem extends StatelessWidget {
  const RecetteItem(
      {super.key,
      required this.name,
      required this.costs,
      required this.gameplay,
      required this.type,
      required this.description});

  final String name;
  final List<Map<String, dynamic>> costs;
  final String gameplay;
  final String type;
  final String description;

  @override
  Widget build(BuildContext context) {
    void decrementCouter(String type, int howMany) {
      var appState = Provider.of<MyAppState>(context, listen: false);
      appState.decrementCouter(type, howMany);
    }

    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title:
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(gameplay),
          trailing: Text(type),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Description : ', style: TextStyle(fontSize: 15.0)),
              Text(description, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Coûts : ', style: TextStyle(fontSize: 15.0)),
                  Row(
                    children: [
                      for (var cost in costs)
                        Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Row(
                            children: [
                              Text(
                                cost['name'] + ':',
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(left: 5.0)),
                              Text(cost['value'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: isEnoughRessources(costs, context)
                    ? () {
                        for (var cost in costs) {
                          decrementCouter(cost['name'].toString().toLowerCase(),
                              cost['value']);
                        }
                        var appState =
                            Provider.of<MyAppState>(context, listen: false);
                        appState.addToInventaire(name, 1);
                      }
                    : null,
                child: const Text('Fabriquer'),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

bool isEnoughRessources(
    List<Map<String, dynamic>> costs, BuildContext context) {
  var appState = Provider.of<MyAppState>(context);
  for (var cost in costs) {
    switch (cost['name']) {
      case 'Bois':
        if (appState.boisCounter > cost['value']) {
          return true;
        }
        break;
      case 'Fer':
        if (appState.ferCounter > cost['value']) {
          return true;
        }
        break;
      case 'Cuivre':
        if (appState.cuivreCounter > cost['value']) {
          return true;
        }
        break;
      case 'Charbon':
        if (appState.charbonCounter > cost['value']) {
          return true;
        }
        break;
    }
  }
  return false;
}
