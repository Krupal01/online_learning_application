import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
          primaryColor: HexColor("#3D5CFF"),
          primaryColorLight: HexColor("#CEECFE"),
          hintColor: HexColor("#858597"),
          textTheme: TextTheme(
            //we can not this bcoz it is 2018 thing and , can't use 2018 things with 2021 update
            // headline1: TextStyle(fontSize: 32 , fontWeight: FontWeight.w600,),
            // headline2: TextStyle(fontSize: 24 , fontWeight: FontWeight.w600,),
            // headline3: TextStyle(fontSize: 22 , fontWeight: FontWeight.w600,),
            // headline4: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500,),
            // headline5: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500,),
            // headline6: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500,),
            // bodyText2: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400,),
            // bodyText1: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400,),

            headlineLarge: TextStyle(fontSize: 24 , fontWeight: FontWeight.w600 , color: Colors.black,),
            headlineMedium: TextStyle(fontSize: 22 , fontWeight: FontWeight.w600 , color: Colors.black,),
            headlineSmall: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , color: Colors.black,),

            titleLarge: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: HexColor("#858597"),),
            titleMedium: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: HexColor("#858597"),),
            titleSmall: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400 , color: Colors.black,),

            bodyLarge: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400 , color: HexColor("#858597"),),
            bodyMedium: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: HexColor("#858597"),),
            bodySmall: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400 , color: HexColor("#858597"),),


            labelLarge: TextStyle(fontSize: 24 , fontWeight: FontWeight.w600 , color: Colors.white,),
            labelMedium: TextStyle(fontSize: 22 , fontWeight: FontWeight.w600 , color: Colors.white,),
            labelSmall: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , color: HexColor("#858597"),),

            displayLarge: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white,),
            displayMedium: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: Colors.white,),
            displaySmall: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Colors.white,),


          ),

      ),
      onGenerateRoute: (settings) => routes.onGenerateRoutes(settings),
      initialRoute: SPLASH_SCREEN_ROUTE,
    );
  }
}

