import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/bottombar_search_button.dart';
import 'package:online_learning_application/widget/nav_icon.dart';

class MainBottomBar extends StatelessWidget {
  final Function(int index) onItemSelected;
  final int selected;

  const MainBottomBar({Key? key, required this.onItemSelected , required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      shape: const AutomaticNotchedShape(RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
        ),
      ),),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(12) , topLeft: Radius.circular(15),)
        ),
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: NavIcon(
                label: 'Home',
                icon: Icons.home,
                isSelected: selected == 1,
                onTap: () {
                  onItemSelected(1);
                },
              ),
            ),
            Expanded(
              child: NavIcon(
                label: 'Courses',
                icon: Icons.book,
                isSelected: selected == 2,
                onTap: () => onItemSelected(2),
              ),
            ),
            Container(width: 70,color: Colors.transparent),
            Expanded(
              child: NavIcon(
                label: 'Message',
                icon: Icons.message,
                isSelected: selected == 3,
                onTap: () => onItemSelected(3),
              ),
            ),
            Expanded(
              child: NavIcon(
                label: 'Account',
                icon: Icons.person,
                isSelected: selected == 4,
                onTap: () => onItemSelected(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
