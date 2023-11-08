void main() {
  
  //Mapa de datos con claves en string y valores en dinamic (valor cualquiera)
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  //! Hero.fromJson: Una funcion dentro de la clase
  // 
    
final ironman = Hero.fromJson( rawJson );
  
//   final ironman = Hero(
//     isAlive: false,
//     power: 'Money',
//     name: 'Tony Stark'
//   );
  
  
  print( ironman );
  
}

class Hero {
  //parametros de mi clase
  String name;
  String power;
  bool isAlive;
  
  //inicializamos los valores de mi class
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  //Funcion dentro de una classe
  // Creo un Map con claves en String y values en Dynamic
  // con ?? valido que si no existe un valor ponga otro por defecto
  //Json especifica  el formato como llega la data
  // json['name'] significa que estamos tomando el valor de la clave del json
  
  Hero.fromJson( Map<String,dynamic> json ) 
     : name = json['name'] ?? 'No name found',
       power = json['power'] ?? 'No power found',
       isAlive = json['isAlive'] ?? 'No isAlive found';
  

  //Sobre escribo el metodo toString para retornarlo en la linee: 22
  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!':'Nope' }';
  }

}




