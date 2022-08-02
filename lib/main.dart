import 'package:flutter/material.dart';
import 'package:quizgame/questao.dart';
import 'package:quizgame/resposta.dart';

main() => runApp(PerguntaApp()); //Componente raíz

class _PerguntaAppState extends State<PerguntaApp> { // Conexão entre estado e o Stateful e controle do estado do componente Stateful.
  var _perguntaSelecionada = 0;

  void _responder() {
    setState((){
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
