import 'package:flutter/material.dart';

class ChatContent extends StatefulWidget {
  @override
  _ChatContentState createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Chat Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
