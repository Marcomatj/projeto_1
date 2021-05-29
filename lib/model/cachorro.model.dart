import 'animal.model.dart';

class Cachorro extends Animal{

  bool querBrincar(){
    return true;
  }

  @override
  void comer() {
    print("O cachorro esta comendo");
  }

}