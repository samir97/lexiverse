import 'package:flutter/material.dart';
import 'package:lexiverse/chat/receive_bubble.dart';
import 'package:lexiverse/chat/send_bubble.dart';
import 'package:lexiverse/chat/system_message.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/messages/conversation/conversation_screen.dart';

class ConversationStarterPanel extends StatelessWidget {
  final LanguagePair languagePair;
  final String? lessonReviewId;
  final ConversationStarter conversationStarter;
  final bool initiallyExpanded;

  const ConversationStarterPanel({
    super.key,
    required this.conversationStarter,
    this.initiallyExpanded = false,
    required this.languagePair,
    this.lessonReviewId,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(conversationStarter.topic.targetText),
        subtitle: Text(conversationStarter.topic.baseText),
      ),
      initiallyExpanded: initiallyExpanded,
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8),
        ConversationMessages(messages: conversationStarter.messages),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ConversationScreen(
                      conversation: Conversation(
                        topic: conversationStarter.topic,
                        languagePair: languagePair,
                        messages: conversationStarter.messages,
                        lastMessagedAt: DateTime.now(),
                        createdAt: DateTime.now(),
                      ),
                    ),
                  ),
                );
              },
              label: const Text('Continue Conversation'),
              icon: const Icon(Icons.chat)),
        ),
      ],
    );
  }
}

class ConversationMessages extends StatelessWidget {
  final List<Message> messages;

  const ConversationMessages({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    final String speaker1 = messages.first.speaker;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...messages.asMap().entries.map((entry) {
          final index = entry.key;
          final message = entry.value;

          final isFirstMessageFromSpeaker = index == 0 ||
              (message.speaker != messages[index - 1].speaker &&
                  message.speaker != 'System');

          if (message.speaker == 'System') {
            return SystemMessage(
              title: message.message.baseText,
              suggestion: message.message.targetText,
            );
          }

          final isSendBubble = message.speaker == speaker1;
          final alignment =
              isSendBubble ? CrossAxisAlignment.end : CrossAxisAlignment.start;
          final color = isSendBubble ? Colors.blue : null;

          return Column(
            crossAxisAlignment: alignment,
            children: [
              if (isFirstMessageFromSpeaker)
                Padding(
                  padding: EdgeInsets.only(
                    left: isSendBubble ? 0 : 24,
                    right: isSendBubble ? 24 : 0,
                    top: 8,
                    bottom: 4,
                  ),
                  child: Text(
                    message.speaker,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              if (isSendBubble)
                SendBubble(message: message.message)
              else
                ReceiveBubble(message: message.message),
            ],
          );
        }),
      ],
    );
  }
}
