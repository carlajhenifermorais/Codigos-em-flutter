import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //tirar tira de debug
      home: TelaEntradaDados(),
    );
  }
}

class TelaEntradaDados extends StatefulWidget{
  TelaEntradaDados();
  
  @override
  State<TelaEntradaDados> createState() => _TelaEntradaDadosState();
}

class _TelaEntradaDadosState extends State<TelaEntradaDados> {
  final TextEditingController _textController = TextEditingController(); //vê o que o usuário está digitando
  String _displayText = ''; //texto dinamico
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //barra
      appBar: AppBar(
        title: Text("Tint"),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        foregroundColor: Colors.pink[500],
      ),
      backgroundColor: Colors.red[50],
      //corpo
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Consultoria de maquiagem rápida",
              style: TextStyle(fontSize: 28,
                              fontWeight: FontWeight.bold
                              ),
            ),
            Text(
              "Informe a ocasião e descubra a make perfeita pra você!",
              style: TextStyle(fontSize: 20,
                              ),
            ),
            
            SizedBox(
                height: 40,
            ),
            
            TextField(controller: _textController,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Digite aqui a ocasião',
                       hintText: 'Ex: Festa, Trabalho, Escola, Dia a dia'
                     ),
                      onSubmitted: (value){
                        setState((){
                          _displayText = _textController.text;
                        });
                      }
            ),
            
            SizedBox(
                height: 40,
            ),
            
            ElevatedButton(
              onPressed: (){
                setState((){
                  _displayText = _textController.text;
                });
              },
              child: Text('Descobrir make', style: TextStyle(fontSize:28, color: Colors.pink[500])),
            ),
            
            SizedBox(
                height: 40,
            ),
            
            Text(
              'Recomendação: $_displayText',
              style: TextStyle(fontSize: 28,
                              fontWeight: FontWeight.bold
                              ),
            ),
          ],
        )
      ),
    );
  }
}
