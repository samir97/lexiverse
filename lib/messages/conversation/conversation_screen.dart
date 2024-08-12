import 'package:flutter/material.dart';
import 'package:lexiverse/chat/input_field.dart';
import 'package:lexiverse/data/model/conversation_response.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/messages/conversation/conversation_list.dart';
import 'package:lexiverse/services/conversation_service.dart';

class ConversationScreen extends StatefulWidget {
  final Conversation conversation;

  const ConversationScreen({super.key, required this.conversation});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen>
    with WidgetsBindingObserver {
  late final ConversationService _conversationService;
  late final List<Message> _messages;
  late final String _speaker1;
  late final String _speaker2;

  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initializeConversation();
    _setupListeners();
  }

  void _initializeConversation() {
    _messages = List.from(widget.conversation.messages);
    _speaker1 = _messages.first.speaker;
    _speaker2 = _messages.firstWhere((m) => m.speaker != _speaker1).speaker;

    _conversationService = ConversationService(
      languagePair: widget.conversation.languagePair,
      speaker1: _speaker1,
      speaker2: _speaker2,
      history:
          _messages.map((m) => "${m.speaker} : ${m.message.baseText}").toList(),
    );
  }

  void _setupListeners() {
    _focusNode.addListener(_onFocusChange);
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    WidgetsBinding.instance.removeObserver(this);
    _focusNode.dispose();
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    if (View.of(context).viewInsets.bottom > 0 && _focusNode.hasFocus) {
      _scrollToBottom();
    }
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) _scrollToBottom();
  }

  Future<void> _addMessage(String text) async {
    setState(() {
      _focusNode.unfocus();
      _isLoading = true;
    });

    try {
      final conversationResponse = await _conversationService.sendMessage(text);
      _updateMessages(conversationResponse);
    } catch (error) {
      _showErrorDialog();
    } finally {
      setState(() => _isLoading = false);
    }

    _scrollToBottom();
  }

  void _updateMessages(ConversationResponse response) {
    setState(() {
      if (response.systemMessage != null) {
        _messages
            .add(Message(speaker: 'System', message: response.systemMessage!));
      }
      _messages.add(
          Message(speaker: _speaker1, message: response.userMessageProcessed));
      _messages
          .add(Message(speaker: _speaker2, message: response.assistantReply));
    });
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Error'),
        content: const Text('There was an error processing your message.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: ConversationList(
                conversation: widget.conversation,
                messages: _messages,
                scrollController: _scrollController,
                speaker1: _speaker1,
              ),
            ),
            InputField(
              controller: _controller,
              addMessage: _addMessage,
              focusNode: _focusNode,
              isLoading: _isLoading,
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
