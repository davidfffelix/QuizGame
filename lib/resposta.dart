import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // minimumSize: Size(100, 40),
          textStyle: TextStyle(fontSize: 15),
          primary: Colors.indigo, // Cor de fundo
          onPrimary: Colors.white, // Cor da fonte
        ),
        child: Text(
            texto
        ),
        onPressed: () {},
      ),
    );
  }
}


