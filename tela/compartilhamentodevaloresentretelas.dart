import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  
  String personagemEscolhido = "Nenhum personagem escolhido";
  String figuraPersonagem = "❓";
  
  @override
  Widget build(BuildContext context){
    String nomeJogador = "Carla";
    
    return Scaffold(
    
      appBar: AppBar(
        title: Text('Tela Inicial'),
        backgroundColor: Colors.pink[50],
      ),
      backgroundColor: Colors.pink[100],
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              'Jogador: $nomeJogador',
              style: TextStyle(fontSize: 30),
            ),
            
            SizedBox(height: 30),
            
            Text(
              figuraPersonagem,
              style: TextStyle(fontSize: 100),
            ),
            
            SizedBox(height: 20),
            
            Text(
              personagemEscolhido,
              style: TextStyle(fontSize: 30),
            ),
            
            SizedBox(height: 30),
            
            ElevatedButton(
              onPressed: () async {
                final resultado = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaPersonagens(
                      jogador: nomeJogador,
                    ),
                  ),
                );
                if(resultado != null){
                  setState((){
                    personagemEscolhido =
                      'Personagem : ${resultado['nome']}';
                    figuraPersonagem =
                      resultado['figura'];
                  });
                }
              },
            child: Text('Escolher Personagem'),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaPersonagens extends StatelessWidget {
  final String jogador;
  
  TelaPersonagens({
    required this.jogador,
  });
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha seu personagem'),
        backgroundColor: Colors.pink[50],
      ),
      
      backgroundColor: Colors.pink[100],
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
      ),
    );
  }
}
