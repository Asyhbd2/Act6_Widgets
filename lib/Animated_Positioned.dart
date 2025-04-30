import 'package:flutter/material.dart';

class PosicionadoAnimado extends StatefulWidget {
  const PosicionadoAnimado({Key? key}) : super(key: key);

  @override
  State<PosicionadoAnimado> createState() => _PosicionadoAnimadoState();
}

class _PosicionadoAnimadoState extends State<PosicionadoAnimado> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Animated Positioned",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color(0xffcd577e)),
        body: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
