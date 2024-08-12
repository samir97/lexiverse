import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) addMessage;
  final FocusNode focusNode;
  final bool isLoading;

  const InputField({
    super.key,
    required this.controller,
    required this.addMessage,
    required this.focusNode,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isLoading) ...[
          const SizedBox(height: 16),
          const LinearProgressIndicator(
            backgroundColor: Color(0xFF4285F4),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFD96570)),
          ),
        ],
        IgnorePointer(
          ignoring: isLoading,
          child: Opacity(
            opacity: isLoading ? 0.25 : 1.0,
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.3),
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: controller,
                                focusNode: focusNode,
                                decoration: const InputDecoration(
                                  hintText: 'Type a message...',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              child: IconButton(
                                icon: const Icon(Icons.send),
                                onPressed: () {
                                  if (controller.text.isNotEmpty) {
                                    addMessage(controller.text);
                                    controller.clear();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
