import 'package:flutter/material.dart';

class ChatboxScreen extends StatelessWidget {
  const ChatboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat Box")),
      body: Center(child: Text("Chat Box Screen")),
    );
  }
}
