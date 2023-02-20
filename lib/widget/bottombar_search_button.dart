import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/utils.dart';

class BottomSearchButton extends StatelessWidget {
  final VoidCallback onSearchPressed;
  final bool? selected;

  const BottomSearchButton(
      {Key? key, required this.onSearchPressed, this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: onSearchPressed,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              shape: BoxShape.circle,
              color: (selected ?? false)
                  ? Theme.of(context).primaryColor
                  : custom_gray,
            ),
            child: Icon(
              Icons.search,
              size: 30,
              color: (selected ?? false)
                  ? Colors.white
                  : Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
