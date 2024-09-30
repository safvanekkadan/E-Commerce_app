import 'package:e_commerce/src/features/authentication/presentation/screen/login_screen.dart';
import 'package:e_commerce/src/features/authentication/presentation/screen/signup_screen.dart';
import 'package:flutter/material.dart';

//const userName = '/user_name_screen';

class AppRoutes {
     static const String signupScreen = '/signup_screen';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}


