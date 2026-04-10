class Produto{
  String nome;
  double preco;
  int quantidade;
  
  Produto(this.nome, this.preco, this.quantidade);
  
  void mostrarProduto(){
    print(nome);
    print(preco);
  }
}

void main() {
  Produto p1 = Produto("Notebook", 3500, 10);
  
  p1.mostrarProduto();
}
