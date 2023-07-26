void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('www.google.com');
    print('Exito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  //throw 'error en la peticion';
  throw Exception('No hay parametros en el url');
  //return 'Tenemos un valor de la peticion';
}
