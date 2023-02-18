import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';

class NavIcon extends StatelessWidget {
  final bool isSelected;

  final VoidCallback onTap;
  final String label;

  final IconData icon;

  const NavIcon({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color:
                    isSelected ? Theme.of(context).primaryColor : custom_gray,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:
                      isSelected ? Theme.of(context).primaryColor : custom_gray,
                ),
              )
              //const Padding(padding: EdgeInsets.only(right: 10))
            ],
          ),
        ),
      ),
    );
  }
}
