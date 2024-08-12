import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/messages/conversation/message_item.dart';

class ConversationList extends StatelessWidget {
  final Conversation conversation;
  final List<Message> messages;
  final ScrollController scrollController;
  final String speaker1;

  const ConversationList({
    super.key,
    required this.conversation,
    required this.messages,
    required this.scrollController,
    required this.speaker1,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: <Widget>[
        SliverAppBar.large(
          title: Text(conversation.topic.targetText),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              conversation.topic.baseText,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => MessageItem(
              message: messages[index],
              isFirstMessageFromSpeaker: _isFirstMessageFromSpeaker(index),
              isSendBubble: messages[index].speaker == speaker1,
            ),
            childCount: messages.length,
          ),
        ),
      ],
    );
  }

  bool _isFirstMessageFromSpeaker(int index) {
    return index == 0 ||
        (messages[index].speaker != messages[index - 1].speaker &&
            messages[index].speaker != 'System');
  }
}
