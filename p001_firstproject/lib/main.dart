import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "jours aleatoires",
      home: JoursAleatoires()
      );
  }
}
class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({Key? key}) : super(key: key);

  @override
  State<JoursAleatoires> createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  List<String> jourdelasemaine = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];
  int indexJourActuel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application Jours Aleatoires"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Cliquez pour voir un Jour",
            style: TextStyle(fontSize: 25, color: Colors.red,),
          ),
           Text(
            jourdelasemaine[indexJourActuel],
            style: TextStyle(fontSize: 40,
            color: Colors.green[800],
            fontWeight: FontWeight.bold),
           ),
          ElevatedButton(onPressed: () {
            setState((){
              indexJourActuel = Random().nextInt(7);
            });
          }, child: Text("Generer un jour "))
        ],
        ),
      ),
    );
  }
}

