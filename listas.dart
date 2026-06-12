
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RankingFIFA(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class RankingFIFA extends StatelessWidget {
  final List<Map<String, dynamic>> selecoes = [
    {'pais': 'Brasil', 'bandeira': '🇧🇷', 'titulos': 5},
    {'pais': 'Alemanha', 'bandeira': '🇩🇪', 'titulos': 4},
    {'pais': 'Itália', 'bandeira': '🇮🇹', 'titulos': 4},
    {'pais': 'Argentina', 'bandeira': '🇦🇷', 'titulos': 3},
    {'pais': 'França', 'bandeira': '🇫🇷', 'titulos': 2},
    {'pais': 'Uruguai', 'bandeira': '🇺🇾', 'titulos': 2},
    {'pais': 'Espanha', 'bandeira': '🇪🇸', 'titulos': 1},
    {'pais': 'Inglaterra', 'bandeira': '🇬🇧', 'titulos': 1},
    {'pais': 'Portugal', 'bandeira': '🇵🇹', 'titulos': 0},
    {'pais': 'Holanda', 'bandeira': '🇳🇱', 'titulos': 0},
    {'pais': 'Estados Unidos', 'bandeira': '🇺🇸', 'titulos': 0},
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold();
  }
}
