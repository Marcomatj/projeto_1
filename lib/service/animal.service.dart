import 'package:projeto_1/model/cachorro.model.dart';

class AnimalService {

  static List<Cachorro> _cachorros = [];
  
  AnimalService(){

    if(_cachorros.isEmpty){
      initializeDogList();
    }

  }

  void initializeDogList() {

    Cachorro c1 = Cachorro();
    c1.id = 1;
    c1.nome = "Tiburssinho";
    c1.peso = 40;

  Cachorro c2 = Cachorro();
    c2.id = 2;
    c2.nome = "Aroldo";
    c2.peso = 15;

  Cachorro c3 = Cachorro();
    c3.id = 3;
    c3.nome = "Tobias";
    c3.peso = 10;


  _cachorros = [c1, c2, c3];
  }

  List<Cachorro> getCachorros(){

    return _cachorros;
  }


  Cachorro getCachorroById(int id){

    return _cachorros.firstWhere((element) => element.id == id, orElse: null);
  }

  bool updateCachorro(Cachorro cachorro){

    Cachorro cachorroQueSeraAtualizado = _cachorros.firstWhere((element) => element.id == cachorro.id, orElse: null);

    if(cachorroQueSeraAtualizado == null){
      return false;
    }

    cachorroQueSeraAtualizado.nome = cachorro.nome;
    cachorroQueSeraAtualizado.peso = cachorro.peso;

    return true;
  }

  Cachorro? deleteById(int id){

    int index = _cachorros.indexWhere((element) => element.id == id);

    if(index == -1){
      return null;
    }

    return _cachorros.removeAt(index);
  }


}