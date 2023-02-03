import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Propiedades privadas del Widget
  // ...

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Constantes y variables locales
    const counterStyle = TextStyle(
      fontSize: 25,
      height: 1.5,
    );
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen'),
        ),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(253, 255, 245, 226),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de pulsaciones:',
              style: counterStyle,
            ),
            Text(
              '$counter',
              style: counterStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          //print('Hola counter:$counter');
        },
      ),
    );
  }
}
