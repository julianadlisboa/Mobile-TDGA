import 'package:flutter/material.dart';
import 'Filmes.dart';
import 'Ser.dart';

final List<Filmes> filmes =[
  Filmes(
    nome: 'Dragon Ball Z',
    texto:'A Batalha dos Deuses: Primeiro filme em anos com Toriyama como roteirista, introduzindo Beerus, o Deus da Destruição. É um marco na expansão do universo de Dragon Ball.',
  ),

    Filmes(
    nome: 'Dragon Ball Z',
    texto:'O Renascimento de Freeza: Toriyama traz Freeza de volta para uma nova batalha contra Goku e amigos, revivendo a nostalgia dos fãs de longa data.',
  ),

    Filmes(
    nome: 'Dragon Ball Super Broly',
    texto:'Reintroduz o poderoso Saiyajin Broly, com nova origem e maior profundidade, combinando ação com a emoção da nostalgia.',
  ),
];

class Fil extends StatelessWidget {
  const Fil({super.key});
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
                MaterialPageRoute(builder: (context) => Ser()),
              );
            },
          ),
        ),
  backgroundColor: Colors.transparent, 
  elevation: 0,
  toolbarHeight: 70,
),
          body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: filmes.map((filmes) {
              return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 140, 82, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  filmes.nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                filmes.texto,
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