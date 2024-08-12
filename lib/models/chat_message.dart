import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatMessage {
  final types.Message message;
  final bool isUserMessage;

  ChatMessage({required this.message, required this.isUserMessage});
}
