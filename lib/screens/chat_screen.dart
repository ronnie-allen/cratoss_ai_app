import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:provider/provider.dart';
import '../providers/chat_provider.dart';
import '../widget/side_menu.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('Chatbot'),
      ),
      body: Consumer<ChatProvider>(
        builder: (context, chatProvider, child) {
          return Chat(
            messages: chatProvider.messages,
            onSendPressed: chatProvider.handleSendPressed,
            user: types.User(id: 'user-id'),
          );
        },
      ),
    );
  }
}
