import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';

class Routes {

  Routes(){}

  Route? onGenerateRoutes(RouteSettings settings){
    switch (settings.name){
      case SPLASH_SCREEN_ROUTE :
        return MaterialPageRoute(builder: (context) => BlocProvider(create: ,child: ,));
    }
  }

}