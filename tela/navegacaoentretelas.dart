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

class SegundaTela extends StatelessWidget{
  SegundaTela();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda tela'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você está na segunda tela',
              style: TextStyle(fontSize: 20),
            ),
            
            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Voltar',)
            ),
          ],
        ),
      ),
    );
  }
}
