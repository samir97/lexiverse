import 'package:flutter/material.dart';
import 'package:lexiverse/chat/receive_bubble.dart';
import 'package:lexiverse/chat/send_bubble.dart';
import 'package:lexiverse/chat/system_message.dart';
import 'package:lexiverse/data/model/lesson.model.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  final bool isFirstMessageFromSpeaker;
  final bool isSendBubble;

  const MessageItem({
    super.key,
    required this.message,
    required this.isFirstMessageFromSpeaker,
    required this.isSendBubble,
  });

  @override
  Widget build(BuildContext context) {
    if (message.speaker == 'System') {
      return SystemMessage(
        title: message.message.baseText,
        suggestion: message.message.targetText,
      );
    }

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
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
  }
}
