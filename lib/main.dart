import 'package:flutter/material.dart';
import 'package:flutter_aula13_1/dados.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final Dados meusDados = new Dados();

  @override
  Widget build(BuildContext context) {
    List<String> dados = meusDados.StarWars;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'star wars',
      home: Scaffold(
        body: ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, posicao) {
              return ListTile(
                title: Text(dados[posicao]),
              );
            }),
      ),
    );
  }
}
