void main() {

  //llamo valores final con la class con el valor que se solicita. Segun la clase
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  
  // llamo a la FUNCION chargePhone para validar el estado de energia de cada planta 
  print( 'wind: ${ chargePhone( windPlant ) }' );
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );
}


// Las clases abstractas. Son como un molde general, es decir es un molde general que me permite crear clases o moldes mas pequeños en base al molde general
// Clase abstracta, estas no pueden ser inicializadas, se tiene que ocupar una instancia de la misma.
// INICIO CLASS ABSTRACT
enum PlantType { nuclear, wind, water } // Similar a una intefaz, difino valores que se pueden asignar a una variable.
// No tiene punto y coma al final ni se define con =
abstract class EnergyPlant {
  
  //Defino mis valores generales 
  double energyLeft; // Cantidad de energia 

  // PlantType, es similar a una interfaz, me permite que valores puede tener mi 'Type' si o si de manera obligatoria.
  final PlantType type; // nuclear, wind, water 
  
  //Inicializo los valores de mi clase como valores requeridos (Constructor)
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  //Metodo que no regresa nada y espera un valor double como la cantidad.
  //! Este metodo no ejerce una accion dentro de la clase abstract, pero se define para aplicarla en las instancias de la misma.
  void consumeEnergy( double amount ); 
}
// FIN CLASS ABSTRACT


// extends o implements
// EXTENDS, Extender o heredar de otra class en este caso del padre EnergyPlant.
// Creamos la clase y adicionamos ' extends ' y extiende de EnergyPlant
class WindPlant extends EnergyPlant {
  
  // Creamos nuestro constructor y definimos los valores que son requeridos en este caso 
  // initialEnergy y energyLeft
  // ' super ' hace referencia al constructor del padre line: 34 si tendriamos mas constructores en la ...
  // class abstract seria ' super.NOMBREDELCONSTRUCTOR '
  WindPlant({ required double initialEnergy })
  //el ' type ', debe ser de la interfaz PlantType linea: 23.
      : super( energyLeft: initialEnergy, type: PlantType.wind );
  


  @override //sobre escribo el metodo 
  // se debe llamar igual como esta en la clase abstracta. 
  // toma la misma cantidad de elementos o parametros y dentro la funcionalidad que deseo hacer
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}


class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
}



// funcion que recibe una EnergyPlant
double chargePhone( EnergyPlant plant ) {
  // si la planta su energia es menor a 10 muestro un mensaje de error 
  if ( plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }
  // caso contrario le reto 10 de energia a la planta
  return plant.energyLeft - 10;
}




