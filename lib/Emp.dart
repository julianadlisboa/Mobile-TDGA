import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Empresas.dart';
import 'package:app_isaa/main.dart';
void main() {
  runApp(Emp());
}

class Emp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatelessWidget {
final List<Empresas> empresas = [
  Empresas(
    imagem1: 'img/shu.png', 
    imagem2: 'img/toe.png',
  ),
  Empresas(
    imagem1: 'img/bir.png', 
    imagem2: 'img/sqe.png',
  ),
  Empresas(
    imagem1: 'img/ban.png', 
    imagem2: 'img/arc.png',
  ),
];

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
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TelaMenu()),
            );
    },
  ),
  backgroundColor: Colors.transparent, 
  elevation: 0,
  toolbarHeight: 70,
),
      body: Center(
                    child: Column(
              children: [
                const SizedBox(height: 10),
                Image.network(
                  'img/empt.png',
                  width: 300,
                ),
                const SizedBox(height: 30),
        CarouselSlider(
          options: CarouselOptions(
            height: 500,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
          ),
          items: empresas.map((empresas) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Image.asset(
                      empresas.imagem1,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 30),
                    Image.asset(
                      empresas.imagem2,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
      ],)
      ),);
  }
}
