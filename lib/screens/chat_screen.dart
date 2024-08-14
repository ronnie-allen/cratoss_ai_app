import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'dart:ui';
import '../providers/chat_provider.dart';
import '../widget/chat_bubble.dart';
import '../widget/message_input.dart';
import '../widget/side_menu.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final ovalSize = screenWidth * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cratoss AI'),
        backgroundColor: Colors.black,
      ),
      // drawer: SideMenu(), // Uncomment if needed
      body: Stack(
        children: [
          // Black Background
          Container(
            color: Colors.black,
          ),
          // Blurred Oval Backgrounds
          Positioned(
            left: -ovalSize * 0.5,
            top: screenHeight * 0.15,
            child: Container(
              width: ovalSize,
              height: ovalSize,
              decoration: ShapeDecoration(
                color: Color(0xFF004FC6).withOpacity(0.2),
                shape: OvalBorder(),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth - ovalSize * 0.5,
            top: screenHeight * 0.65,
            child: Container(
              width: ovalSize,
              height: ovalSize,
              decoration: ShapeDecoration(
                color: Color(0xFF004FC6).withOpacity(0.3),
                shape: OvalBorder(),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          // Chat Messages
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: chatProvider.messages.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messages[index] as types.TextMessage;
                    final isUserMessage = message.author.id == 'user-id';

                    return AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      child: ChatBubble(
                        message: message,
                        isUserMessage: isUserMessage,
                      ),
                    );
                  },
                ),
              ),
              MessageInput(onSend: chatProvider.handleSendPressed),
            ],
          ),
        ],
      ),
    );
  }
}
