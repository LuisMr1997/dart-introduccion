void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // ON nos permite reaccionar en base al error 
    // Para el caso es una Exception es decir hacer algo en base a la exception 
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    //Errores inesperado
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    print('Fin del try y catch');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en el URL');
  
//   throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';
  
}


