//! REF: https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
//class padre
abstract class Animal {}
//class que derivan del padre 
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


//Classes normales que tienen un metodo
abstract class Volador {
  //funcion volar dentro de la class
  void volar() => print('estoy volando!');
}

abstract class Caminante {
  void caminar() => print('estoy caminando!');
}

abstract class Nadador {
  void nadar() => print('estoy nadando!');
}

// Creo una class llamada Delfil que extiende de la class Mamifiero
//con with en la clases "mixins" le especifico otra clase en este caso la class Nadador
// Es decir podra acceder a la funcion de la class
class Delfin extends Mamifero with Nadador {}

// Creo una class llamada Murcielago que extiende de la class Mamifiero
//con with en la clases "mixins" le especifico otra clase en este caso la class Volador y Caminante 
// Es decir podra acceder a la funcion de la class
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}


// Creo una class llamada Paloma que extiende de la class Mamifiero
//con with en la clases "mixins" le especifico otra clase en este caso la class Volador y Caminante 
// Es decir podra acceder a la funcion de la class
class Paloma extends Ave with Caminante, Volador {}

// Creo una class llamada Pato que extiende de la class Mamifiero
//con with en la clases "mixins" le especifico otra clase en este caso la class Volador y Caminante Nadador
// Es decir podra acceder a la funcion de la class
class Pato extends Ave with Caminante, Volador, Nadador {}

// etc ...
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}


void main() {
  
  //Extiendo mis class mi class Final la que contiene las funcionalidades de las class
  //En este caso el DELFIN que extiende de un mamifero y contiene las funcionalidades de Nadador
  final flipper = Delfin();
  flipper.nadar();
  
  //ETC ...
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
   
}


// Resumen: Los "mixins", nos ayudan a concatener las funcionalidades de multiples class
// Estas class deben extender de un padre en este caso de ANIMAL 
// Estas class deben ser un "Extends"








