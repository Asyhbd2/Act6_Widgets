import 'package:flutter/material.dart';

class SwitcherAnimado extends StatefulWidget {
  const SwitcherAnimado({Key? key}) : super(key: key);

  @override
  State<SwitcherAnimado> createState() => _SwitcherAnimadoState();
}

class _SwitcherAnimadoState extends State<SwitcherAnimado> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Switcher",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff6d6d6d),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  '$_count',
                  style: const TextStyle(fontSize: 40),
                  key: ValueKey(_count),
                ),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
              ),
              ElevatedButton(
                child: const Text('Añadir'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
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
