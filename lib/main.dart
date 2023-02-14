import 'package:flutter/material.dart';
import 'package:online_learning_application/routes.dart';
import 'package:online_learning_application/Constants.dart';

void main() {
  runApp(MyApp(routes : Routes()));
}

class MyApp extends StatelessWidget {
  Routes routes;
  MyApp({super.key , required this.routes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => routes.onGenerateRoutes(settings),
      initialRoute: SPLASH_SCREEN_ROUTE,
    );
  }
}

