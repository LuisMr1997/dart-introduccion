void main() {

  //Funciones fuera del main ##otros documentos.
  print( greetEveryone() );
  
  //Funciones fuera del main con argumentos y retorna un resulado 
  //##otros documentos.
  print( 'Suma: ${ addTwoNumbers( 10, 20 ) }' );
  
  print( greetPerson( name: 'Fernando', message: 'Hi,' ) );
  
}

//funcion que retorna un String y no espera paramtros
String greetEveryone() => 'Hello everyone!';

//funcion que retorna un Int y espera argumentos
int addTwoNumbers( int a, int b ) => a + b;

//funcion que retorna un Int y espera argumentos pero 
//'b' no es obligatorio y en caso de no existir es 0
int addTwoNumbersOptional( int a, [ int b = 0 ]) {
//Formas de validar si existe un valor
//   b ??= 0;
// b = b ?? 0;
//b++;
  return a + b;
}


String greetPerson({ required String name, String message = 'Hola,' }) {
  return '$message Fernando';
}









