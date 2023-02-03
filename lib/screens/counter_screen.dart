import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  final String title;

  const CounterScreen({
    super.key,
    required this.title,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Propiedades privadas del Widget
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // Constantes y variables locales
    const counterStyle = TextStyle(
      fontSize: 25,
      height: 2,
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(253, 255, 245, 226),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Valor del contador:',
              style: counterStyle,
            ),
            Text(
              '$_counter',
              style: counterStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: () => setState(() => _counter++),
        //increaseFn: increase,
        decreaseFn: () => setState(() => _counter--),
        //decreaseFn: decrease,
        restartFn: () => setState(() => _counter = 0),
        //restartFn: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restartFn,
  });

  @override
  Widget build(BuildContext context) {
    //const double spcButtons = 28.5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.refresh),
        ),
        //const SizedBox(width: spcButtons),
        FloatingActionButton(
          onPressed: () => restartFn(),
          child: const Icon(Icons.refresh),
        ),
        //const SizedBox(width: spcButtons),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
