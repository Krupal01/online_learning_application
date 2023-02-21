import 'package:flutter/material.dart';
import 'package:online_learning_application/screens/message_list_screen.dart';
import 'package:online_learning_application/screens/notification_list_screen.dart';
import 'package:online_learning_application/widget/utils.dart';

import '../routes.dart';
import '../widget/bottombar_search_button.dart';
import '../widget/main_bottombar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Notifications",
            style: blackText24,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              // color for indicator (underline)
              borderSide: BorderSide(color: Theme.of(context).primaryColor,width: 2),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Text(
                "message",
                style: blackText18,
              ),
              Text(
                "notifications",
                style: blackText18,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MessageListScreen(),
            NotificationListScreen(),
          ],
        ),
        bottomNavigationBar: MainBottomBar(
          selected: 3,
          onItemSelected: (index) {
            Routes.bottomNavigateTo(index, context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: BottomSearchButton(
          onSearchPressed: () => Routes.bottomNavigateTo(5, context),
        ),
      ),
    );
  }
}
