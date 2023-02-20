import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/screens/account_screen.dart';
import 'package:online_learning_application/screens/all.dart';
import 'package:online_learning_application/bloc/all.dart';
import 'package:online_learning_application/screens/courses_screen.dart';
import 'package:online_learning_application/screens/message_screen.dart';
import 'package:online_learning_application/screens/search_screen.dart';

class Routes {
  late final LoginCubit loginCubit;

  Routes() {
    loginCubit = LoginCubit();
  }

  Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: SplashScreen(),
                ));
      case SIGNUP_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: SignUpScreen(),
                ));
      case LOGIN_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: LoginScreen(),
                ));
      case HOME_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: HomeScreen(),
                ));
      case COURSE_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: CoursesScreen(),
                ));
      case MESSAGE_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: MessageScreen(),
                ));
      case ACCOUNT_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: AccountScreen(),
                ));
      case SEARCH_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: loginCubit,
                  child: SearchScreen(),
                ));
    }
    return null;
  }

  static void bottomNavigateTo(int selected, BuildContext context) {
    switch (selected) {
      case 1:
        Navigator.of(context).pushNamed(HOME_SCREEN_ROUTE);
        break;
      case 2:
        Navigator.of(context).pushNamed(COURSE_SCREEN_ROUTE);
        break;
      case 3:
        Navigator.of(context).pushNamed(MESSAGE_SCREEN_ROUTE);
        break;
      case 4:
        Navigator.of(context).pushNamed(ACCOUNT_SCREEN_ROUTE);
        break;
      case 5: //floating button click
        Navigator.of(context).pushNamed(SEARCH_SCREEN_ROUTE);
        break;
    }
  }

}