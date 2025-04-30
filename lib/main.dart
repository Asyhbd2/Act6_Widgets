import 'package:flutter/material.dart';
import 'package:deleonrutas/Pagina_uno.dart';
import 'package:deleonrutas/Pagina_dos.dart';
import 'package:deleonrutas/Pagina_tres.dart';
import 'package:deleonrutas/Pagina_cuatro.dart';
import 'package:deleonrutas/Pagina_cinco.dart';
import 'package:deleonrutas/Pagina_seis.dart';
import 'package:deleonrutas/Pagina_siete.dart';

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
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
