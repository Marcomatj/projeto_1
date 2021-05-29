abstract class Animal {

  int id = 0;
  String nome = "";
  double peso = 0;

  void comer(){
    print("comer");
  
  }

  String dizerMeuNome(){
    return "Meu nome eh $nome";
  }
  
}