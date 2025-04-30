import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla 7",
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade700,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Rotate Logo'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Regresar"),
            ),
          )
        ],
      ),
    );
  }
}
