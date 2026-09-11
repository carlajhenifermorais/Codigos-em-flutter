import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CadastroUsuarios(),
    );
  }
}

class CadastroUsuarios extends StatefulWidget {
  @override
  State<CadastroUsuarios> createState() => _CadastroUsuariosState();
}

class _CadastroUsuariosState extends State<CadastroUsuarios> {
  final TextEditingController nomeController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController idadeController =
      TextEditingController();

  List<Map<String, dynamic>> usuarios = [];

  void cadastrarUsuario() {
    if (nomeController.text.isEmpty ||
        emailController.text.isEmpty ||
        idadeController.text.isEmpty) {
      
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Preencha todos os campos',
        ),
      ),
      );
      return;
    }
    
    if(nomeController.text.length < 3){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
          'Digite pelo menos 3 letras',
          ),
        ),
      );
    }
    
    
    if(!emailController.text.contains('@')||
      !emailController.text.contains('.')){
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'E-mail inválido',
          ),
        ),
      );
      
      return;
    }
    
    bool existe = usuarios.any(
    (usuario) =>
      usuario['email']==
      emailController.text,
    );
    
    if (existe){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'E-mail já cadastrado',
          ),
        ),
      );
    }
    
    int? idade = int.tryParse(idadeController.text);
    
    if(idade == null){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Digite uma idade válida',
          ),
        ),
      );
    }

    if(idade < 1 || idade > 120){
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
          'Idade inválida',
          ),
        ),
      );
      return;
    }
    setState(() {
      usuarios.add({
        'nome': nomeController.text,
        'email': emailController.text,
        'idade': int.parse(idadeController.text),
      });
    });

    nomeController.clear();
    emailController.clear();
    idadeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuários'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [

            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: idadeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Idade',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              child: ElevatedButton(
                onPressed: cadastrarUsuario,
                child: Text('Cadastrar'),
              ),
            ),

            SizedBox(height: 15),

            Text(
              'Usuários cadastrados: ${usuarios.length}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      title: Text(
                        usuarios[index]['nome'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'E-mail: ${usuarios[index]['email']}\n'
                        'Idade: ${usuarios[index]['idade']} anos',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
