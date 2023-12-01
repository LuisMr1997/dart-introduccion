void main() {
  
  //llamo a mi funcion externa emitNumbers  que retornara un Stream de numeros enteros
  // .listem es una funcion propia de Stream que significa "escuchar" 
  // value es el valor resultado de la fucnion Stream 

  emitNumber()
  //Al ocupar async*  se puede especificar el tipo de dato que envio
     .listen( (int value) {
        
       print( 'Stream value: $value' );
       
     }); 
}

// Los streams pueden ser retornados y usados como
// objetos, funciones o métodos, son un flujo de
// información que puede estar emitiendo valores
// periódicamente, una única vez, o nunca.

// Un Stream podría verse como una manguera
// conectada a un tubo de agua, cuando abres el tubo el
// agua fluye, cada gota de agua sería una emisión del
// Stream, la manguera puede nunca cerrarse, cerrarse o
// nunca abrirse.

//Flujo de datos que retorna un unico valor o multiples valores

//async*  Indica que retornara string

Stream<int> emitNumber() async* {
  
  //Serie controlada
  final valuesToEmit = [1,2,3,4,5];
  
  //For que enviara los elementos del Array
  for( int i in valuesToEmit ) {
    //inicio el await PROMESAS
    await Future.delayed( const Duration(seconds: 1));
    // Retorno controlado con "yield"  retorno controlado es decir retorno de cada valor cada cierto tiempo
    yield i;
  }
}


