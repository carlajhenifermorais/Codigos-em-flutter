class Bolo{
  int ovo;
  String leite;
  String manteiga;
  String farinha;
  String fermento;
  String _ingredientesecreto = "Chocolate";
  
  Bolo(this.ovo, this.leite,this.manteiga, this.farinha, this.fermento);
  
  void adicionarOvo(){
    print('Adicionando $ovo ovos...');
  }
   void adicionarLeite(){
    print('Adicionando $leite de leite...');
  }
   void adicionarManteiga(){
    print('Adicionando $manteiga de manteiga...');
  }
   void adicionarFarinha(){
    print('Adicionando $farinha de farinha...');
  }
   void adicionarFermento(){
    print('Adicionando $fermento de fermento...');
  }
   void adicionarIngredienteSecreto(){
    print('Adicionando $_ingredientesecreto...');
  }
  void misturarIngredientes(){
    print("Misturando...");
  }
  void assar(){
    print("Assando a 180°");
    print("Está pronto! 🎂😋");
  }
  
}

void main() {
  Bolo b1 = Bolo(3, "100ml", "2 colheres", "100g", "1 colher");
  b1.adicionarOvo();
  b1.adicionarManteiga();
  b1.misturarIngredientes();
  b1.adicionarLeite();
  b1.misturarIngredientes();
  b1.adicionarFarinha();
  b1.misturarIngredientes();
  b1.adicionarFermento();
  b1.misturarIngredientes();
  b1.adicionarIngredienteSecreto();
  b1.misturarIngredientes();
  b1.assar();
}
