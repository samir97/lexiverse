import 'package:flutter/material.dart';
import 'package:lexiverse/messages/starter/starters_tab.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Conversations'),
      ),
      body: const StartersTab(),
    );
  }
}
