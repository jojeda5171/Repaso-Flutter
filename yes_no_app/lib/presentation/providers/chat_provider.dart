import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola amor!', fromWho: FromWho.mine),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String texxt) async {
    //Todo: implementar metodo
  }
}
