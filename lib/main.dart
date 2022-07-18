import 'package:flutter/material.dart';

main() => runApp(PerguntaApp()); //Componente ra�z

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta Respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual � sua cor favorita?',
      'Qual � seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2 foi selecionada!');
              },
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!!!'),
            ),
          ],
        ),
        body: Text('Olá Flutter'),
      ),
    );
  }
}

