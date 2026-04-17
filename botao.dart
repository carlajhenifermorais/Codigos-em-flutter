import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaContador(),
    );
  }
}

class TelaContador extends StatefulWidget{
  @override
  State<TelaContador> createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  int valor = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Valor: $valor"),
            
            ElevatedButton(
              onPressed: () {
                setState((){
                  valor = valor + 1;
                }); 
              },
              child: Text("Somar"),
            ),
            
            SizedBox(
                width: 20,
                height: 10,
             ),
            
            ElevatedButton(
              onPressed: () {
                setState((){
                  valor = valor - 1;
                }); 
              },
              child: Text("Subtrair"),
            ),
            
            SizedBox(
                width: 20,
                height: 10,
            ),
            
            ElevatedButton(
              onPressed: () {
                setState((){
                  valor = 0;
                }); 
              },
              child: Text("Zerar"),
            ),
          ]
        ),
      ),
    );
  }
}
