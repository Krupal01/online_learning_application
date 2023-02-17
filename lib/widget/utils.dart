import 'package:flutter/material.dart';

Widget space({double? horizontal , double? vertical }){
  return SizedBox(
    width: horizontal ?? 0,
    height: vertical ?? 0,
  );
}

OutlineInputBorder getFocusBorder(BuildContext context){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
      color: Theme.of(context).primaryColor,
    ),
  );
}

OutlineInputBorder getEnabledBorder(BuildContext context){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  );
}