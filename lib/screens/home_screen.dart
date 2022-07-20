// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //Variable, Propiedad

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 20);
    const fontSize15 = TextStyle(fontSize: 20);
    int counter = 10;

    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // print('Hola Mundo');
          counter++;
        },
      ),
    );
  }
}
