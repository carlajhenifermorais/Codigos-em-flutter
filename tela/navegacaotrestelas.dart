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
        title: Text('Tela login'),
      ),
      backgroundColor: Colors.pink[100],
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
          child: Text('Entrar'),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget{
  SegundaTela();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela principal'),
      ),
      backgroundColor: Colors.pink[100],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TerceiraTela(),
              ),
            );
            },
          child: Text('Ir pra configurações'),
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget{
  TerceiraTela();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela configurações'),
      ),
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Text('Você está em configurações'),
        ),
      );
  }
}
