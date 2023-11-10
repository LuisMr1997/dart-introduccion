void main() {
  
  //llamo a mi clase y le paso el parametro con nombre 'side'
  final mySquare = Square( side: -10 );
  
//   mySquare.side = 5;
  
  
  print( 'área: ${ mySquare.area }' );
  
}

//Creo mi clase Square, Cuadrado.
class Square {
  

  //Defino los valores que necesita mi clase.
  //Con ' _ ' define mi valor como privado.
  double _side; // side * side
  
  
  //Inicializo mi valor definido side (Constructor)
  Square({ required double side })
  //assert, me permite poner reglas para los valores, si no se cumple la condicion me lanzara error.
  //En este caso es obligatorio que side sea mayo a 0.
  // Primero van las :assert y luego la asignacion de valores.
  //Primer parametro la condicion, segundo parametro el mensaje que quiero mostrar.
     : assert(side >= 0, 'side must be >= 0'),
       _side = side;
  

  //GET Propiedad que se puede mostrar como un elemento de mi class
  double get area {
    //Retorno mi valor multiplicado por el mismo como valor privado ' _ '
    return _side * _side;
  }
  
  //SET: Me permite modificar mi valor privado
  // Me permite controlar la interaccion de mis valores de manera correcta.
  set side( double value ) {
    // Imprimo el valor que ingreso
    print('setting new value $value');
    // De ser menor que 0 me culmina la funcionalidad
    if ( value < 0 ) throw 'Value must be >=0';
    
    // Caso contrario se asigna el valor a _side para retornar el valor correcto
    _side = value;
      
  }
  
  //Retorno de la multiplicacion del valor ingresado en caso de ser correcto
  double calculateArea() {
    return _side * _side;
  }
}


