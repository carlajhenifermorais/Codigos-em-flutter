import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraTela(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PrimeiraTela extends StatelessWidget{
  PrimeiraTela();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira tela'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaTela(),
              ),
            );
            },
          child: Text('Ir pra segunda tela'),
        ),
      ),
    );
  }
}
