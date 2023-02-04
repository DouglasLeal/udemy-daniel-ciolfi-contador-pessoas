import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pessoas = 0;

  controlePessoas(int valor) {
    setState(() {
      pessoas += valor;
    });
  }

  bool get estaVazio => pessoas == 0;

  bool get estaCheio => pessoas == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              estaCheio ? "Lotado!" : "Pode Entrar!",
              style: TextStyle(
                fontSize: 32,
                color: estaCheio ? Colors.red : Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                pessoas.toString(),
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: estaVazio
                        ? Colors.white.withOpacity(0.2)
                        : Colors.white,
                    fixedSize: const Size(80, 80),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    estaVazio ? null : controlePessoas(-1);
                  },
                  child: const Text(
                    "-1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: estaCheio
                        ? Colors.white.withOpacity(0.2)
                        : Colors.white,
                    fixedSize: const Size(80, 80),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    estaCheio ? null : controlePessoas(1);
                  },
                  child: const Text(
                    "+1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
