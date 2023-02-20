import 'package:flutter/material.dart';

import '../routes.dart';
import '../widget/bottombar_search_button.dart';
import '../widget/main_bottombar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
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
    );
  }
}
