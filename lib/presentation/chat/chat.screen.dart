import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_test/presentation/chat/controllers/chat.controller.dart';

class ChatScreen extends StatelessWidget {
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    final String walkerName = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with $walkerName"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.messageController,
                    decoration: InputDecoration(hintText: "Type a message"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    controller.sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
