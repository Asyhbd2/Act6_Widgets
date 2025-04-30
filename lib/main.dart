import 'package:flutter/material.dart';
import 'package:deleonrutas/Index.dart';
import 'package:deleonrutas/Animated_Icon.dart';
import 'package:deleonrutas/Animated_List.dart';
import 'package:deleonrutas/Animated_Modal_Barrier.dart';
import 'package:deleonrutas/Animated_Opacity.dart';
import 'package:deleonrutas/Animated_Padding.dart';
import 'package:deleonrutas/Animated_Physical_Model.dart';
import 'package:deleonrutas/Animated_Positioned.dart';
import 'package:deleonrutas/Animated_Rotation.dart';
import 'package:deleonrutas/Animated_Size.dart';
import 'package:deleonrutas/Animated_Switcher.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const Index(),
        '/animatedicon': (context) => const IconoAnimado(),
        '/animatedlist': (context) => const ListaAnimada(),
        '/animatedmodal': (context) => const ModalAnimada(),
        '/animatedopacity': (context) => const OpacidadAnimada(),
        '/animatedpadding': (context) => const PaddingAnimado(),
        '/animatedphysicalmodel': (context) => const ModeloFisicoAnimado(),
        '/animatedpositioned': (context) => const PosicionadoAnimado(),
        '/animatedrotation': (context) => const RotacionAnimada(),
        '/animatedsize': (context) => const TamanoAnimado(),
        '/animatedswitcher': (context) => const SwitcherAnimado(),
      },
    );
  }
}
