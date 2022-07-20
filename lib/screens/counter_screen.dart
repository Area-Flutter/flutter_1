// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  //Variable, Propiedad
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 20);
    const fontSize15 = TextStyle(fontSize: 20);

    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0.0,
      ),
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize),
            Text('$counter', style: fontSize15),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1),
            onPressed: () {
              // print('Hola Mundo');
              counter++;
              setState(() {});
            },
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.clear),
            onPressed: () {
              // print('Hola Mundo');
              counter = 0;
              setState(() {});
            },
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              // print('Hola Mundo');
              counter--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
