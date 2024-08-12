import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import '../services/api_services.dart';

class ChatProvider with ChangeNotifier {
  List<types.Message> _messages = [];
  final ApiService _apiService = ApiService();

  List<types.Message> get messages => _messages;

  void handleSendPressed(types.PartialText message) async {
    final userMessage = types.TextMessage(
      author: types.User(id: 'user-id'),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'user-message-id-${_messages.length}',
      text: message.text,
    );

    _messages.insert(0, userMessage);
    notifyListeners();

    try {
      final responseText = await _apiService.generateText(message.text);

      final botMessage = types.TextMessage(
        author: types.User(id: 'bot-id'),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'bot-message-id-${_messages.length}',
        text: responseText,
      );

      _messages.insert(0, botMessage);
      notifyListeners();
    } catch (e) {
      print("Error sending message: $e");

      final errorMessage = types.TextMessage(
        author: types.User(id: 'bot-id'),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'error-message-id-${_messages.length}',
        text: "Sorry, something went wrong.",
      );

      _messages.insert(0, errorMessage);
      notifyListeners();
    }
  }
}
