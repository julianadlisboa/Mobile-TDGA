import 'package:flutter/material.dart';
import 'Trabalho.dart';
import 'Jog.dart';
import 'Ser.dart';
import 'Fil.dart';

final List<Trabalho> trabalho = [
  Trabalho(
    titulo: 'img/trat.png',
    imagem: 'img/aktra.png',
  ),
];

class Tra extends StatelessWidget {
  const Tra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 177, 255),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
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
      body: Stack(
        children: trabalho.map((trabalho) {
          return Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Image.network(
                  trabalho.titulo,
                  width: 300,
                ),
                const SizedBox(height: 30),
                Image.network(
                  trabalho.imagem,
                  width: 250,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Jog(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Jogos"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ser(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Séries"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fil(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Filmes"),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}