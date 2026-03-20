import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp());
}
      
 class MyApp extends StatelessWidget{ //página estatica
   @override
   Widget build(BuildContext context){ //constroi e retorna interface
     return MaterialApp(
      home: Scaffold( //estrutura básica tela
        appBar: AppBar( //barra superior
          title: Text('Meu app'), //titulo pra barra superior
        ),
        body: Center(
          child: Text(
            'Olá, Flutter!',
            style: TextStyle(fontSize:32), //estilizar tamanho da fonte
        ),
      ),
     ),
   );
  }
 }
