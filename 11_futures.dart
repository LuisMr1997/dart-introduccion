void main() {
  
// Un Future representa principalmente el resultado de
// una operación asíncrona. Es una promesa de que
// pronto tendrás un valor. La promesa puede fallar y hay
// que manejar la excepción. Los futures son un acuerdo
// de que en el futuro tendrás un valor para ser usado.

  print('Inicio del programa');
  

  //Future declarado fuera del main
  //Se utiliza como una funcion normal con Then y catch
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });
  
  print('Fin del programa');
}


//Future inicia la promesa y regresa un tipo Dinamyc o le puedo especificar como en este caso

Future<String> httpGet( String url ){
  //Feature. me muestra los metodos de feature, despues pongo una funcion () {}
  return Future.delayed( const Duration(seconds: 1), () {
   //throw genera los errores sin necesidad de return
    throw 'Error en la petición http';
    
//     return 'Respuesta de la petición http';
    
  });
  
}