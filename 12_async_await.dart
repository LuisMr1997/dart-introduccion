void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( value ); //En caso de retornar bien el servicio GET
    
  } catch (err) {
    //En caso de error retornamos el error controlado en el GET
    print('Tenemos un error: $err');
  }
  
  
  print('Fin del programa');
}

//Future inicia la promesa y regresa un tipo Dinamyc o le puedo especificar como en este caso

Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la petición'; //Error controlado
  
//   return 'Tenemos un valor de la petición';
  
}


