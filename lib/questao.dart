import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(
        texto,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
    );
  }
}
