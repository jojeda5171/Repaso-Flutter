void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneracion');
  //final Hero wolverine = new Hero(name: 'Logan');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin Poder'});

  @override
  String toString() {
    return '$name - $power';
  }
}
