import 'package:flutter/material.dart';
import 'Biografia.dart';

final List<Biografia> biografia =[
  Biografia(
    titulo:'img/biot.png',
    nome: 'AKIRA TORIYAMA',
    texto:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel odio sed leo accumsan tempor non in lectus. Donec posuere a magna et ornare. Aenean sed tellus augue. Aenean in ultricies augue. Morbi eleifend turpis tempus erat varius, id varius nunc cursus. Curabitur in turpis turpis. Nam luctus mollis velit, vitae tempor justo dapibus quis. Cras scelerisque sollicitudin libero, ut facilisis eros. In et ullamcorper ipsum. Duis scelerisque tempus orci, non pulvinar velit blandit vitae. Pellentesque urna orci, consequat vitae libero non, condimentum feugiat sem. Donec metus erat, mollis sed nulla non, venenatis imperdiet erat.',
    imagem:'img/akbio.png',
  ),
];

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 203, 177, 255),
      appBar: AppBar(
  leading: IconButton(
    icon: 
      Image.asset(
        'img/voltar.png',
        width: 30,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
  backgroundColor: Colors.transparent, 
  elevation: 0,
  toolbarHeight: 70,
),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: biografia.map((biografia) {
              return Column(
                children: [
                  Image.network(
                biografia.titulo,
                width: 250,        
                fit: BoxFit.cover,
              ),

                  const SizedBox(height: 35),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      biografia.imagem,
                      width: 300,
                    ),
                  ),

                  const SizedBox(height: 20),
                  Text(
                biografia.nome,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
                  const SizedBox(height: 10,),

                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 69, 21, 164),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      biografia.texto, 
                      textAlign: TextAlign.center, 
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), 
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}