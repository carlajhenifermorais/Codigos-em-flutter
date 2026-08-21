import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilmesExplorer(),
    );
  }
}

class FilmesExplorer extends StatefulWidget {
  @override
  State<FilmesExplorer> createState() => _FilmesExplorerState();
}

class _FilmesExplorerState extends State<FilmesExplorer> {
  final List<Map<String, dynamic>> filmes = [
    {
      'nome': 'Minha culpa',
      'genero': 'Romance/Drama',
      'faixa_etaria': 16,
      'avaliacao': 6.1
    },
    {
      'nome': 'Guerreiras do Kpop',
      'genero': 'Musical/Ação',
      'faixa_etaria': 10,
      'avaliacao': 7.4
    },
    {
      'nome': 'Enola Holmes',
      'genero': 'Mistério/Aventura',
      'faixa_etaria': 12,
      'avaliacao': 6.7
    },
    {
      'nome': 'Moana',
      'genero': 'Aventura/Musical',
      'faixa_etaria': 10,
      'avaliacao': 7.6
    },
    {
      'nome': 'Os Farofeiros',
      'genero': 'Comédia',
      'faixa_etaria': 12,
      'avaliacao': 6.0
    },
    {
      'nome': 'Minha Mãe é uma Peça',
      'genero': 'Comédia',
      'faixa_etaria': 12,
      'avaliacao': 6.9
    },
    {
      'nome': 'Ainda Estou Aqui',
      'genero': 'Drama/Drama Histórico',
      'faixa_etaria': 14,
      'avaliacao': 8.1
    },
    {
      'nome': 'O Pianista',
      'genero': 'Guerra/Drama',
      'faixa_etaria': 16,
      'avaliacao': 8.5
    },
    {
      'nome': 'O Milagre da Cela 7',
      'genero': 'Drama/Melodrama',
      'faixa_etaria': 14,
      'avaliacao': 8.2
    },
    {
      'nome': 'Annabelle',
      'genero': 'Terror/Mistério',
      'faixa_etaria': 14,
      'avaliacao': 5.5
    },
  ];

  List<Map<String, dynamic>> filmesFiltrados = [];

  String filtroTexto = '';
  String generoSelecionado = 'Todos';
  double minimoAvaliacao = 0;
  String criterioOrdenacao = 'Nome A-Z';

  @override
  void initState() {
    super.initState();
    aplicarFiltros();
  }

  void aplicarFiltros() {
    List<Map<String, dynamic>> resultado = filmes.where((filme) {
      bool atendeNome = filme['nome']
          .toString()
          .toLowerCase()
          .contains(filtroTexto.toLowerCase());

      bool atendeGenero = generoSelecionado == 'Todos' ||
          filme['genero']
              .toString()
              .split('/')
              .contains(generoSelecionado);

      bool atendeAvaliacao =
          filme['avaliacao'] >= minimoAvaliacao;

      return atendeNome && atendeGenero && atendeAvaliacao;
    }).toList();

    switch (criterioOrdenacao) {
      case 'Nome A-Z':
        resultado.sort(
          (a, b) => a['nome'].compareTo(b['nome']),
        );
        break;

      case 'Nome Z-A':
        resultado.sort(
          (a, b) => b['nome'].compareTo(a['nome']),
        );
        break;

      case 'Avaliacao ↑':
        resultado.sort(
          (a, b) => a['avaliacao'].compareTo(b['avaliacao']),
        );
        break;

      case 'Avaliacao ↓':
        resultado.sort(
          (a, b) => b['avaliacao'].compareTo(a['avaliacao']),
        );
        break;
    }

    setState(() {
      filmesFiltrados = resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes Explorer',
                   style: TextStyle(
                      color: Colors.white,
                   ),
                   ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // PESQUISA
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Pesquisar filme',
                labelStyle: TextStyle(color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                hintText: 'Ex.: Moana, Annabelle...',
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(Icons.search, color: Colors.deepPurple),
                border: OutlineInputBorder(),
              ),
              onChanged: (texto) {
                filtroTexto = texto;
                aplicarFiltros();
              },
            ),
          ),

          // GÊNERO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonFormField<String>(
              value: generoSelecionado,
              dropdownColor: Colors.black,
              decoration: InputDecoration(
                labelText: 'Gênero',
                labelStyle: TextStyle(color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                border: OutlineInputBorder(),
              ), 
              items: [
                'Todos',
                'Romance',
                'Drama',
                'Musical',
                'Ação',
                'Mistério',
                'Aventura',
                'Comédia',
                'Drama Histórico',
                'Guerra',
                'Melodrama',
                'Terror',
              ].map((genero) {
                return DropdownMenuItem<String>(
                  value: genero,
                  child: Text(genero,
                             style: TextStyle(
                                color: Colors.grey[500],
                              ),
                             ),
                );
              }).toList(),
              onChanged: (valor) {
                generoSelecionado = valor!;
                aplicarFiltros();
              },
            ),
          ),

          SizedBox(height: 10),

          // AVALIAÇÃO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Mínimo de avaliação: ${minimoAvaliacao.toStringAsFixed(1)}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                Slider(
                  value: minimoAvaliacao,
                  min: 0,
                  max: 10,
                  divisions: 20,
                  label: minimoAvaliacao.toStringAsFixed(1),
                  onChanged: (valor) {
                    minimoAvaliacao = valor;
                    aplicarFiltros();
                  },
                ),
              ],
            ),
          ),

          // ORDENAÇÃO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ordenar por',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 8),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SegmentedButton<String>(
                    segments: const [
                      ButtonSegment<String>(
                        value: 'Nome A-Z',
                        label: Text('Nome de A-Z',
                                   style: TextStyle(
                                    color: Colors.white,
                                   ),
                                   ),
                        icon: Icon(Icons.sort_by_alpha),
                      ),
                      ButtonSegment<String>(
                        value: 'Nome Z-A',
                        label: Text('Nome de Z-A',
                                   style: TextStyle(
                                    color: Colors.white,
                                   ),
                                   ),
                        icon: Icon(Icons.sort_by_alpha),
                      ),
                      ButtonSegment<String>(
                        value: 'Avaliacao ↑',
                        label: Text('Nota',
                                   style: TextStyle(
                                    color: Colors.white,
                                   ),
                                   ),
                        icon: Icon(Icons.arrow_downward),
                      ),
                      ButtonSegment<String>(
                        value: 'Avaliacao ↓',
                        label: Text('Nota',
                                   style: TextStyle(
                                    color: Colors.white,
                                   ),
                                   ),
                        icon: Icon(Icons.arrow_upward),
                      ),
                    ],
                    selected: {criterioOrdenacao},
                    onSelectionChanged: (Set<String> valor) {
                      criterioOrdenacao = valor.first;
                      aplicarFiltros();
                    },
                    style: SegmentedButton.styleFrom(
                        selectedBackgroundColor: Colors.deepPurple,
                        selectedForegroundColor: Colors.white,
                        foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // LISTA DE FILMES
          Expanded(
            child: filmesFiltrados.isEmpty
                ? Center(
                    child: Text(
                      'Nenhum filme encontrado.',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                : ListView.builder(
                    itemCount: filmesFiltrados.length,
                    itemBuilder: (context, index) {
                      final filme = filmesFiltrados[index];

                      return Card(
                        color: Colors.black26,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 3,
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.movie),
                          ),

                          title: Text(
                            filme['nome'],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                            ),
                          ),
                          
                          subtitle: Text(
                            'Gênero: ${filme['genero']}\n'
                            'Classificação: ${filme['faixa_etaria']} anos\n'
                            'Avaliação: ${filme['avaliacao']}',
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                          ),

                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (i) {
                              double nota = filme['avaliacao'] / 2;

                              return Icon(
                                i < nota.floor()
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.amber,
                                size: 20,
                              );
                            }),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
