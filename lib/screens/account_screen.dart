import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

import '../routes.dart';
import '../widget/bottombar_search_button.dart';
import '../widget/main_bottombar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Account",
          style: blackText24,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/Avatar 03.png"),
              ),
              space(vertical: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => InkWell(
                  child: ListTile(
                    title: Text("Data 1"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainBottomBar(
        selected: 4,
        onItemSelected: (index) {
          Routes.bottomNavigateTo(index, context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomSearchButton(
        onSearchPressed: () => Routes.bottomNavigateTo(5, context),
      ),
    );
    ;
  }
}
