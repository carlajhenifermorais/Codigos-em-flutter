void main() {
  print('Olá, Mundo em Dart!');
  //comentários
  String nome = 'Flutter';
  int anoLancamento = 2017;
  double versao = 3.0;
  bool isMobile = true;
  
  print('O $nome foi lançado em $anoLancamento e está na versão $versao.');
  
  //comandos de repetição
  if(isMobile){
    print('É uma tecnologia para desenvolvimento móvel.');
  }else{
    print('Não é uma tecnologia para desenvolvimento móvel.');
  }
  
  //listas
  List<String> frameworks = ["Flutter", "React Native", "Xamarin", "Cordova"];
  print('Alguns frameworks mobile: ${frameworks.join(', ')}');
  
  //funções
  saudar('Alunos');
}

void saudar(String destinatario){
  print('Olá, $destinatario!');
}