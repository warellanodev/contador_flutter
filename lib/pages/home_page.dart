import 'package:flutter/material.dart';
import '../widgets/custom_floating_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 1000;

  void increase() {
    setState(() {
      contador++;
    });
  }

  void dicrese() {
    setState(() {
      contador--;
    });
  }

  void reset() {
    setState(() {
      contador = 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(fontSize: 25);
    //const colorWhite = TextStyle(color: Colors.white);

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.apps_outlined),
          onPressed: (() {}),
        ),
        title: const Text('Hola Mundo'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador de Clicks',
              style: fontSize25,
            ),
            Text(
              '$contador',
              style: fontSize25,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: CustomFloatingButtons(
        increaseFn: increase,
        dicreseFn: dicrese,
        resetFn: reset,
      ),
    );
  }
}
