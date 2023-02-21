import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/images/No Notifictations.png")),
        Text("No notification yet", style: blackText16,),
      ],
    );
  }
}
