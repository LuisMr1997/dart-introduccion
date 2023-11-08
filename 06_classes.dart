void main() {
  
  //Se hace una instancia de la clase en este caso Hero line: 13
  // Parametros con nombre line: 26
  final Hero wolverine = Hero(name: 'Logan',power: 'Regeneración');
  
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
  
}

//se define la clase con mayusculas y llaves {}
class Hero {
  
  //Tenemos que definir el tipo 
  //Se podria poner String? para que no lo interprete como null
  //String? no es recomentado, pero util en casos especiales
  String name;
  String power;
  
  //Tenemos que inicializar la clase 
  //siempre con los valores de las variables
  // Forma 2 de declarar los valores dentro de la misma clase
  // argumentos con nombres
  Hero({ 
    required this.name, //El nombre es requerido 
    this.power = 'Sin poder' //Defino un valor defecto y no es obligatorio
  });
  
  // Forma  1 de definir los parametros de la clase
  // En dart se hace con ":" la declaracion de los valores de la clase
//   Hero( String pName, String pPower )
//      : name = pName,
//        power = pPower;
  


  //Sobre escribir una una funcion o metondos
  // se puede borrar y validar con la linea: 7
  @override
  String toString() {
    return '$name - $power';
  }
  
}









