import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const SimpleButton({Key? key , required this.onPressed ,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            const EdgeInsets.all(12)),
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: child,
    );
  }
}
