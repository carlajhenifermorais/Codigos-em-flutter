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
          child: Row(
            children: [
                Icon(Icons.star, size: 30, color: Colors.yellow),
              Text(
                'Olá INFO!',
                style: TextStyle(fontSize: 25),
              ),
              Icon(Icons.favorite, size: 30, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
