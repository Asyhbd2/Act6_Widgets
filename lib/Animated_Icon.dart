import 'package:flutter/material.dart';

class IconoAnimado extends StatefulWidget {
  const IconoAnimado({Key? key}) : super(key: key);

  @override
  State<IconoAnimado> createState() => _IconoAnimadoState();
}

class _IconoAnimadoState extends State<IconoAnimado>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Icon",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              if (_isPlay == false) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _controller,
              size: 100,
            ),
          ),
        ));
  }
}
