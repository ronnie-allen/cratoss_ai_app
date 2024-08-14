import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatBubble extends StatelessWidget {
  final types.TextMessage message;
  final bool isUserMessage;
  final bool showLoading;

  const ChatBubble({
    required this.message,
    required this.isUserMessage,
    this.showLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (showLoading && !isUserMessage)
            SizedBox(
              width: 50,
              height: 50,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          if (!showLoading)
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: isUserMessage ? Color(0xFF004FC7) : Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.white),  
              ),
            ),
        ],
      ),
    );
  }
}
