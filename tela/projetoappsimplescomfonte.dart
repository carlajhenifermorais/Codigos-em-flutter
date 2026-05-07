import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Fonte global mais delicada
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),

      home: TelaEntradaDados(),
    );
  }
}

class TelaEntradaDados extends StatefulWidget {
  @override
  State<TelaEntradaDados> createState() => _TelaEntradaDadosState();
}

class _TelaEntradaDadosState extends State<TelaEntradaDados> {
  String _resultado = '';
  String _tutorial = '';
  String _displayText = '';

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tint Makeup"),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        foregroundColor: Colors.pink[500],
      ),
      backgroundColor: Colors.red[50],

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // TÍTULO mais delicado
            Text(
              "Consultoria de maquiagem rápida",
              style: GoogleFonts.dancingScript(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              "Informe a ocasião e descubra a make perfeita pra você!",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite aqui a ocasião',
                hintText: 'Opções: Festa, Trabalho, Escola, Dia a dia',
              ),
              onSubmitted: (value) {
                setState(() {
                  _displayText = _textController.text;
                });
              },
            ),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayText = _textController.text;

                  if (_displayText == "Festa" ||
                      _displayText == "festa" ||
                      _displayText == "FESTA") {
                    _resultado =
                        'Batom vermelho + sombra preta esfumada + iluminador';
                    _tutorial =
                        'https://www.youtube.com/results?search_query=make+para+festa+olho+preto+batom+vermelho';
                  } else if (_displayText == "Trabalho" ||
                      _displayText == "trabalho" ||
                      _displayText == "TRABALHO") {
                    _resultado =
                        'Batom nude + sombra marrom leve + máscara de cílios';
                    _tutorial =
                        'https://www.youtube.com/results?search_query=make+para+trabalho+natural+nude';
                  } else if (_displayText == "Escola" ||
                      _displayText == "escola" ||
                      _displayText == "ESCOLA") {
                    _resultado =
                        'Gloss leve + blush rosado + máscara de cílios';
                    _tutorial =
                        'https://www.youtube.com/results?search_query=make+leve+para+escola+natural';
                  } else if (_displayText == "Dia a dia" ||
                      _displayText == "dia a dia" ||
                      _displayText == "DIA A DIA") {
                    _resultado =
                        'Gloss transparente + pele leve + máscara de cílios';
                    _tutorial =
                        'https://www.youtube.com/results?search_query=make+dia+a+dia+natural+simples';
                  } else if (_displayText == "") {
                    _resultado = 'Digite uma ocasião!';
                    _tutorial = '';
                  } else {
                    _resultado =
                        'Não tem essa opção, escolha outra!';
                    _tutorial = '';
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[100],
              ),
              child: Text(
                'Descobrir make',
                style: TextStyle(fontSize: 24, color: Colors.pink),
              ),
            ),

            SizedBox(height: 40),

            Text(
              'Recomendação:',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              _resultado,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            Text(
              'Tutorial:',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              _tutorial,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
