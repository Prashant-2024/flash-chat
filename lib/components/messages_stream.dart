import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'message_bubble.dart';

class MessagesStream extends StatelessWidget {
  MessagesStream({required this.loggedInUser});

  final User loggedInUser;
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:
          _firestore.collection('messages').orderBy('timestamp').snapshots(),
      builder: (context, snapshot) {
        List<MessageBubble> messageBubbles = [];
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        // '?' null check whether snapshot has data
        final messages = snapshot.data?.docs.reversed;
        // '!' can't use nullable expression in for-in loop
        for (var message in messages!) {
          final messageText = message.get('text');
          final messageSender = message.get('sender');
          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: loggedInUser.email == messageSender,
          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}
