class Conta{
  double _saldo = 0; //atributo privado
  
  void depositar(double valor){
    _saldo += valor;
  } //método pra alterar
  
  void mostrarSaldo(){
    print(_saldo);
  }
}

void main(){
  Conta c1 = Conta();
  
  c1.depositar(100);
  
  c1.mostrarSaldo();
}
