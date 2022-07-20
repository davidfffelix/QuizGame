import 'package:flutter/material.dart';

main() => runApp(PerguntaApp()); //Componente raíz

class PerguntaAppState extends State<PerguntaApp> { // Conexão entre estado e o Stateful e controle do estado do componente Stateful.
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }
}

class PerguntaApp extends StatefulWidget {




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
            Text(perguntas[perguntaSelecionada]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
