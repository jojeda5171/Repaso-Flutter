void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: ${numbers}');
  print('Tamao: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Primero: ${numbers.first}');
  print('Ultimo: ${numbers.last}');
  print('Reversa: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  print('Mayores a 5: ${numbersGreaterThan5}');
  print('Mayores a 5 set: ${numbersGreaterThan5.toSet()}');
}
