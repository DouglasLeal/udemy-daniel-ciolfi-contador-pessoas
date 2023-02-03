import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Pode Entrar!",
              style: TextStyle(fontSize: 32, color: Colors.white,),
            ),
            Text(
              "0",
              style: TextStyle(fontSize: 100, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
