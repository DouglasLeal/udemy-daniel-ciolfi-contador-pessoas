import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pessoas = 0;

  aumentarPessoas(){
    setState(() {
      pessoas++;
    });
  }

  diminuirPessoas(){
    setState(() {
      pessoas--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pode Entrar!",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Text(
              pessoas.toString(),
              style: const TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: diminuirPessoas,
                  child: const Text("-1"),
                ),
                TextButton(
                  onPressed: aumentarPessoas,
                  child: const Text("+1"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
