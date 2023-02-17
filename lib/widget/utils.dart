import 'package:flutter/material.dart';

Widget space({double? horizontal , double? vertical }){
  return SizedBox(
    width: horizontal ?? 0,
    height: vertical ?? 0,
  );
}