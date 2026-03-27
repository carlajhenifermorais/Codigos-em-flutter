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
  String mensagem = 'Sejam todos muito bem-vindos!';
  
  void alterarMensagem(){
    mensagem = 'Você clicou na tela!';
  }
  
  void alterarTela(){
    setState(alterarMensagem);
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
          onTap: alterarTela,
          child: Text(
            mensagem,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
