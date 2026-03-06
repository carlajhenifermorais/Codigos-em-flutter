var nome = 'Voyager I'; //declarar sem tipo
String nome; //da erro com valor nulo
String? nome; //permite valor nulo
const pi = 3.14; //não muda na execução, é constante
final data = DateTime.now(); //constante com classe e método
int a = 5;
int b = 6;
String texto = "Carla";
List<String> frutas = ["Maça", "Banana"]; //criar lista
Set<int> numeros = [10, 98, 98, 67];//não mostra numeros repetidos
void main(){
  print(data);
  print('Data/hora atual $data'); //printar com comentário
  print('${a + b}');//fazer soma
  print(texto.length);//contar letras
  print(frutas[0]);
}
