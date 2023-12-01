void main() {
  
  //llamo a mi funcion externa emitNumbers  que retornara un Stream de numeros enteros
  // .listem es una funcion propia de Stream que significa "escuchar" 
  // value es el valor resultado de la fucnion Stream 
  emitNumbers().listen( (value) {
     print('Stream value: $value');
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
Stream<int> emitNumbers() {
  // periodic emite valores desde cero hasta que termine mi tiempo es decir Duration
  // Cuando el segunda pase returnamos el valor 
  return Stream.periodic( const Duration(seconds: 1), (value){
//     print('desde periodic $value');
    return value;


    // .take limitamos el numero de emociones que vamos a ejecutar.
    // El stream inicia en 0.
  }).take(5);
  
}