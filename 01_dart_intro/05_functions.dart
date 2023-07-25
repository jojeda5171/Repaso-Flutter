void main() {
  print(greetEveryone());
  print(greetEveryone1());
  print(addTwoNumbers(10, 20));
  print(addTwoNumbersLambda(10, 20));
  print(addTwoNumberOptional(10));
  print(greetPerson(name: 'Jose', message: 'Hi,'));
}

String greetEveryone() {
  return 'Hello everyone!';
}

String greetEveryone1() => 'Hello Everyone!';

int addTwoNumbers(int a, int b) {
  return (a + b);
}

int addTwoNumbersLambda(int a, int b) => a + b;

int addTwoNumberOptional(int a, [int b = 0]) {
  //b ??= 0;
  return (a + b);
}

String greetPerson({required String name, String message = 'Hola, '}) {
  return '$message $name';
}
