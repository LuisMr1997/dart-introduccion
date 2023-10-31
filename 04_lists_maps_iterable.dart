
void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${ numbers.first }');
  
   //Elminar los repetidos de una lista.
   print('List original sin repetidos ${numbers.toSet().toList()}');
  
  
  // se convierte en un itere
  print('Reversed: ${ numbers.reversed }'); 
  
  final reversedNumbers = numbers.reversed;
  
  print('Iterable: $reversedNumbers');
  
  //Convierto el iterable en mi lista original
  print('List: ${ reversedNumbers.toList() }'); 
  
  //Convierto el iterable en un objeto con valores unicos.
  print('Set: ${ reversedNumbers.toSet() }');
  
  //Evaluamos todos los elemtnos del iterable 
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; // true
  });
  
  
  
print('>5 iterable: $numbersGreaterThan5');
print('>5 Set {}: ${ numbersGreaterThan5.toSet() }');
  print('>5 Set []: ${ numbersGreaterThan5.toSet().toList() }');
}
