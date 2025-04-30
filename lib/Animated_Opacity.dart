import 'package:flutter/material.dart';

class OpacidadAnimada extends StatefulWidget {
  const OpacidadAnimada({Key? key}) : super(key: key);

  @override
  State<OpacidadAnimada> createState() => _OpacidadAnimadaState();
}

class _OpacidadAnimadaState extends State<OpacidadAnimada> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Opacity",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent.shade400,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              ElevatedButton(
                child: const Text('Desaparecer'),
                onPressed: () {
                  setState(
                    () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                  );
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
