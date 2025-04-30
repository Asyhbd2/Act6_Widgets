import 'package:flutter/material.dart';

class ModeloFisicoAnimado extends StatefulWidget {
  const ModeloFisicoAnimado({Key? key}) : super(key: key);

  @override
  State<ModeloFisicoAnimado> createState() => _ModeloFisicoAnimadoState();
}

class _ModeloFisicoAnimadoState extends State<ModeloFisicoAnimado> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Physical Model",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff176cff),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                elevation: _isFlat ? 0 : 6.0,
                shape: BoxShape.rectangle,
                shadowColor: Colors.black,
                color: Colors.white,
                child: const SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Icon(Icons.android_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Click'),
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
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
