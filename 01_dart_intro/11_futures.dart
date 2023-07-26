void main() {
  print('Inicio del programa');

  httpGet('www.google.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

Future httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';
    //return 'Respuesta de la peticion http';
  });
}
