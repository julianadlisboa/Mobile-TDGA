import 'package:flutter/material.dart';
import 'Bio.dart';
import 'Emp.dart';
import 'Tra.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 203, 177, 255),
      ),
      home: const TelaMenu(),
    );
  }
}

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 177, 255),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.network(
                  'img/titulo.png',
                  width: 300,
                ),
                const SizedBox(height: 30),
                Image.network(
                  'img/akira.png',
                  width: 250,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bio(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Biografia"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Emp(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Empresas"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tra(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 140, 82, 255)),
                    foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
                    fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text("Trabalhos"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}