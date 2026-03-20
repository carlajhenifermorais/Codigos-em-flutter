import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold( //estrutura básica tela
        appBar: AppBar( //barra superior
          title: Text('Meu app'), //titulo pra barra superior
        ),
        body: Center(
          child: Text('Olá, Flutter!'),
        ),
      ),
    ),
  );
}
