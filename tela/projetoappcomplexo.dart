import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  final TextEditingController _peleController = TextEditingController();
  final TextEditingController _cabeloController = TextEditingController();
  final TextEditingController _olhoController = TextEditingController();

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

            Text(
              "Descubra sua paleta",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // PELE
            TextField(
              controller: _peleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tom de pele',
                hintText: 'Clara, Média, Negra',
              ),
            ),

            SizedBox(height: 20),

            // CABELO
            TextField(
              controller: _cabeloController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cor do cabelo',
                hintText: 'Loiro, Castanho, Preto, Ruivo',
              ),
            ),

            SizedBox(height: 20),

            // OLHOS
            TextField(
              controller: _olhoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cor dos olhos',
                hintText: 'Azul, Verde, Claro, Escuro',
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {

                setState(() {

                  String pele = _peleController.text;
                  String cabelo = _cabeloController.text;
                  String olhos = _olhoController.text;

                  if (pele == "Clara" &&
                      cabelo == "Loiro" &&
                      ((olhos == "Azul" || olhos == "Verde"))) {

                    _resultado = "Verão Claro";

                  } else if (pele == "Clara" &&
                             cabelo == "Castanho" &&
                             olhos == "Claro") {

                    _resultado = "Verão Suave";

                  } else if (pele == "Clara" &&
                             cabelo == "Preto" &&
                             olhos == "Escuro") {

                    _resultado = "Inverno Frio";

                  } else if (pele == "Negra" &&
                             cabelo == "Preto" &&
                             olhos == "Escuro") {

                    _resultado = "Inverno Escuro";

                  } else if (pele == "Clara" &&
                             cabelo == "Ruivo" &&
                             olhos == "Verde") {

                    _resultado = "Primavera Quente";

                  } else if ((pele == "Clara" || pele == "Média") &&
                             cabelo == "Loiro" &&
                             olhos == "Claro") {

                    _resultado = "Primavera Clara";

                  } else if (pele == "Média" &&
                             cabelo == "Castanho" &&
                             olhos == "Claro") {

                    _resultado = "Outono Suave";

                  } else if (pele == "Negra" &&
                             cabelo == "Preto" &&
                             olhos == "Escuro") {

                    _resultado = "Outono Escuro";

                  } else if (pele == "Clara" &&
                      cabelo == "Ruivo" &&
                      olhos == "Escuro") {

                      _resultado = "Outono Quente";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Ruivo" &&
                    olhos == "Claro") {

                    _resultado = "Primavera Quente";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Ruivo" &&
                    olhos == "Azul") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Loiro" &&
                    olhos == "Escuro") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Castanho" &&
                    olhos == "Azul") {

                    _resultado = "Verão Suave";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Castanho" &&
                    olhos == "Verde") {

                    _resultado = "Verão Suave";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Castanho" &&
                    olhos == "Escuro") {

                    _resultado = "Verão Frio";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Preto" &&
                    olhos == "Azul") {

                    _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Preto" &&
                    olhos == "Verde") {

                    _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Clara" &&
                    cabelo == "Preto" &&
                    olhos == "Claro") {

                    _resultado = "Inverno Frio";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Loiro" &&
                    olhos == "Azul") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Loiro" &&
                    olhos == "Verde") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Loiro" &&
                    olhos == "Escuro") {

                    _resultado = "Primavera Brilhante";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Castanho" &&
                    olhos == "Azul") {

                    _resultado = "Outono Suave";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Castanho" &&
                    olhos == "Verde") {

                    _resultado = "Outono Suave";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Castanho" &&
                    olhos == "Escuro") {

                    _resultado = "Outono Quente";

                  }
                  else if (pele == "Média" &&
                   cabelo == "Preto" &&
                   olhos == "Azul") {

                   _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Preto" &&
                    olhos == "Verde") {

                    _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Preto" &&
                    olhos == "Claro") {

                    _resultado = "Inverno Frio";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Preto" &&
                    olhos == "Escuro") {

                    _resultado = "Inverno Escuro";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Ruivo" &&
                    olhos == "Azul") {

                    _resultado = "Primavera Quente";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Ruivo" &&
                    olhos == "Verde") {

                    _resultado = "Primavera Quente";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Ruivo" &&
                    olhos == "Claro") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Média" &&
                    cabelo == "Ruivo" &&
                    olhos == "Escuro") {

                    _resultado = "Outono Quente";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Loiro" &&
                    olhos == "Azul") {

                    _resultado = "Primavera Brilhante";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Loiro" &&
                    olhos == "Verde") {

                    _resultado = "Primavera Brilhante";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Loiro" &&
                    olhos == "Claro") {

                    _resultado = "Primavera Brilhante";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Loiro" &&
                    olhos == "Escuro") {

                    _resultado = "Outono Escuro";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Castanho" &&
                    olhos == "Azul") {

                    _resultado = "Outono Suave";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Castanho" &&
                    olhos == "Verde") {

                    _resultado = "Outono Suave";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Castanho" &&
                    olhos == "Claro") {

                    _resultado = "Outono Suave";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Castanho" &&
                    olhos == "Escuro") {

                    _resultado = "Outono Escuro";
  
                  }
                  else if (pele == "Negra" &&
                    cabelo == "Preto" &&
                    olhos == "Azul") {

                  _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Preto" &&
                    olhos == "Verde") {

                    _resultado = "Inverno Brilhante";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Preto" &&
                    olhos == "Claro") {

                    _resultado = "Inverno Frio";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Ruivo" &&
                    olhos == "Azul") {

                    _resultado = "Primavera Quente";

                  }
                  else if (pele == "Negra" &&
                    cabelo == "Ruivo" &&
                    olhos == "Verde") {

                    _resultado = "Primavera Quente";

                  }
                  else if (pele == "Negra" &&
                   cabelo == "Ruivo" &&
                   olhos == "Claro") {

                    _resultado = "Primavera Clara";

                  }
                  else if (pele == "Negra" &&
                   cabelo == "Ruivo" &&
                   olhos == "Escuro") {

                   _resultado = "Outono Escuro";

                  }
                  else {

                    _resultado = "Combinação não encontrada!";
                  }
                });
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[100],
              ),

              child: Text(
                "Descobrir paleta",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.pink[500],
                ),
              ),
            ),

            SizedBox(height: 40),

            Text(
              "Resultado:",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              _resultado,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
