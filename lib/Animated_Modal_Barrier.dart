import 'package:flutter/material.dart';

class ModalAnimada extends StatefulWidget {
  const ModalAnimada({Key? key}) : super(key: key);

  @override
  State<ModalAnimada> createState() => _ModalAnimadaState();
}

class _ModalAnimadaState extends State<ModalAnimada>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    final ColorTween colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _colorAnimation = colorTween.animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose(); // ¡Muy importante!
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Barrera Modular Animada",
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
                width: 250.0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        overlayColor: Colors.orangeAccent,
                      ),
                      child: const Text('Presionar'),
                      onPressed: () {
                        setState(() {
                          _isPressed = true;
                        });
                        _animationController.reset();
                        _animationController.forward();

                        Future.delayed(const Duration(seconds: 3), () {
                          if (mounted) {
                            setState(() {
                              _isPressed = false;
                            });
                          }
                        });
                      },
                    ),
                    if (_isPressed)
                      AnimatedModalBarrier(
                        color: _colorAnimation,
                        dismissible: true,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Regresar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
