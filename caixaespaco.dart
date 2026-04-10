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
          child: SizedBox(
            width: 200,
            height: 100,
            child: Text(
              'Ola INFO!',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
