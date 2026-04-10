import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu app'),
        ),
        backgroundColor: Colors.green[500],
        body: Center(
          child: Column( //ou row pra organizar em linha
            mainAxisAlignment: MainAxisAlignment.center,//posiciona o bloco centralizado
            children: [
              Icon(Icons.star, size: 60, color: Colors.yellow),
              Text(
                'Olá INFO!',
                style: TextStyle(fontSize: 40),
              ),
              Icon(Icons.favorite, size: 60, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

// Link com icones: https://api.flutter.dev/flutter/material/Icons-class.html
// Exemplo: Icon(Icons.alarm, size: 60, color: Colors.yellow),
