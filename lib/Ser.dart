import 'Fil.dart';

import 'Jog.dart';
import 'package:flutter/material.dart';
import 'Series.dart';

final List<Series> series =[
  Series(
    nome: 'Dragon Ball',
    texto:'A saga de Goku em busca das Esferas do Dragão, onde ele faz amigos e enfrenta inimigos. Esse é o começo de tudo e estabeleceu Dragon Ball como um fenômeno cultural.',
  ),

    Series(
    nome: 'Dragon Ball Z',
    texto:'Continuação de Dragon Ball, com foco em batalhas intensas e a evolução de Goku e seus amigos. É a série que consolidou Dragon Ball globalmente, especialmente no Ocidente.',
  ),

    Series(
    nome: 'Dr. Slump',
    texto:'Uma comédia sobre um cientista e sua criação, a androide Arale, cheia de humor e criatividade. Foi o primeiro grande sucesso de Toriyama e mostra seu talento para histórias divertidas.',
  ),
];

class Ser extends StatelessWidget {
  const Ser({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 203, 177, 255),
     appBar: AppBar(
      leading: Padding(
          padding: const EdgeInsets.only(bottom: 10.0), 
          child: IconButton(
            icon: Image.asset(
              'img/voltar.png', 
              width: 40.0,
            ),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Jog()),
              );
            },
          ),
        ),
 actions: <Widget>[
  IconButton(
    icon: 
      Image.asset(
        'img/seguir.png',
        width: 40,
    ),
    onPressed: () {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fil()),
            );
    },
  ),],
  backgroundColor: Colors.transparent, 
  elevation: 0,
  toolbarHeight: 70,
),
          body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: series.map((series) {
              return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Primeiro Container
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 140, 82, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  series.nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                series.texto,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ],
              );
              
            }).toList(),
          ),
        ),
        
      );
  }
}