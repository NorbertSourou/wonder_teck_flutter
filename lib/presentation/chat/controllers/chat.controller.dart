import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var messageController = TextEditingController();
  var messages = <String>[].obs;

  // Méthode pour envoyer un message
  void sendMessage() {
    final message = messageController.text.trim();
    if (message.isNotEmpty) {
      messages.add(message);
      messageController.clear();
    }
  }
}
