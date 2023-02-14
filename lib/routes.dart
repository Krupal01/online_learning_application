
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/screens/all.dart';
import 'package:online_learning_application/bloc/all.dart';

class Routes {
  late final LoginCubit loginCubit;

  Routes(){
    loginCubit = LoginCubit();
  }

  Route? onGenerateRoutes(RouteSettings settings){
    switch (settings.name){
      case SPLASH_SCREEN_ROUTE :
        return MaterialPageRoute(builder: (context) => BlocProvider.value(value: loginCubit,child: const SplashScreen(),));
    }
    return null;
  }

}