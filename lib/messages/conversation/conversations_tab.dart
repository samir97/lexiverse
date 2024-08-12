import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/mock_lesson.dart';
import 'package:lexiverse/messages/conversation/conversation_screen.dart';

class ConversationsTab extends StatelessWidget {
  const ConversationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final conversations = [mockConversation];
    return ListView.builder(
      padding: const EdgeInsets.only(top: 16),
      itemCount: conversations.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(
              conversations[index].topic.targetText,
            ),
            subtitle: Text(
              conversations[index].topic.baseText,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ConversationScreen(
                    conversation: conversations[index],
                  ),
                ),
              );
            });
      },
    );
  }
}
