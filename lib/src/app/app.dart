import 'package:e_commerce/src/app/routes.dart';
import 'package:e_commerce/src/app/themes.dart';
import 'package:e_commerce/src/features/authentication/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce',
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        onGenerateRoute: AppRoutes.generateRoute,
        home: const LoginScreen(),
      );
  }
}
