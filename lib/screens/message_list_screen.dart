import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/message_widget.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => MessageWidget(),
    );
  }
}
