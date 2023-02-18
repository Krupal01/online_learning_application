import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/bottombar_search_button.dart';
import 'package:online_learning_application/widget/main_bottombar.dart';

import '../routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: MainBottomBar(
        selected: 1,
        onItemSelected: (index) {
          Routes.bottomNavigateTo(index, context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomSearchButton(
        onSearchPressed: (){},
      ),
    );
  }
}
