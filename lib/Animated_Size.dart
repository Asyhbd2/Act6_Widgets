import 'package:flutter/material.dart';

class TamanoAnimado extends StatefulWidget {
  const TamanoAnimado({Key? key}) : super(key: key);

  @override
  State<TamanoAnimado> createState() => _TamanoAnimadoState();
}

class _TamanoAnimadoState extends State<TamanoAnimado> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Size",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffaab735),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ));
  }
}
