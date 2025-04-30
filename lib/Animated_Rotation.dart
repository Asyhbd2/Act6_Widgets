import 'package:flutter/material.dart';

class RotacionAnimada extends StatefulWidget {
  const RotacionAnimada({Key? key}) : super(key: key);

  @override
  State<RotacionAnimada> createState() => _RotacionAnimadaState();
}

class _RotacionAnimadaState extends State<RotacionAnimada> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Rotation",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                child: const Text('Rotar Logo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
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
              ),
            ],
          ),
        ));
  }
}
