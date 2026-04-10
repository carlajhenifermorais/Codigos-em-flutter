import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//continua sendo o widget principal
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MinhaTela(),
    );
  }
}

//Widget (estrutura de tela)
class MinhaTela extends StatefulWidget{
  @override
  State<MinhaTela> createState(){
    return _MinhaTelaState();
  }
}

//estado da tela
class _MinhaTelaState extends State<MinhaTela> {
  String mensagem = 'Interaja com a tela!';
  
  void umToque(){
    mensagem = 'Toque simples!';
  }
  
  void doisToques(){
    mensagem = 'Duplo toque!!';
  }
  
  void toqueLongo(){
    mensagem = 'Toque longo!!!!!!';
  }
  
  void alterarUm(){
    setState(umToque);
  }
  
  void alterarDois(){
    setState(doisToques);
  }
  
  void alterarTres(){
    setState(toqueLongo);
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      backgroundColor: Colors.pink[50],
      body: Center(
        child: GestureDetector(
          onTap: alterarUm,
          onDoubleTap: alterarDois,
          onLongPress: alterarTres,
          child: Text(
            mensagem,
            style: TextStyle(fontSize: 44),
          ),
        ),
      ),
    );
  }
