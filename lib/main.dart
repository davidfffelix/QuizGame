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
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
        {
          'texto': 'Qual é sua cor favorita?',
          'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
        },

        {
          'texto': 'Qual é seu animal favorito?',
          'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
        },

        {
        'texto': 'Qual é seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Léo', 'Pedro'],
        },
      ];

      List<Widget> respostas = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
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
