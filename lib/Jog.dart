import 'Ser.dart';
import 'Tra.dart';
import 'package:flutter/material.dart';
import 'Jogos.dart';

final List<Jogos> jogos =[
  Jogos(
    nome: 'Dragon Quest',
    texto:'Toriyama criou os personagens dessa famosa série de RPG, que se tornou um dos maiores sucessos de jogos no Japão.',
  ),

    Jogos(
    nome: 'Chrono Trigger',
    texto:'Ele colaborou na criação dos personagens deste jogo, um clássico dos RPGs, muito querido por sua história e visual único.',
  ),

    Jogos(
    nome: 'Dragon Ball FighterZ',
    texto:'Jogo de luta que captura a essência dos personagens de Dragon Ball, oferecendo uma experiência fiel ao estilo de Toriyama.',
  ),
];



class Jog extends StatelessWidget {
  const Jog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 203, 177, 255),
     appBar: AppBar(
      leading: Padding(
          padding: const EdgeInsets.only(bottom: 10.0), 
          child: IconButton(
            icon: Image.asset(
              'img/home.png',
              width: 40.0,
            ),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tra()),
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
              MaterialPageRoute(builder: (context) => const Ser()),
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
            
            children: jogos.map((jogos) {
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
                  jogos.nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                jogos.texto,
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