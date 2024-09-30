import 'package:e_commerce/src/app/routes.dart';
import 'package:e_commerce/src/app/themes.dart';
import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:e_commerce/src/features/authentication/presentation/widgets/custome_button.dart';
import 'package:e_commerce/src/features/authentication/presentation/widgets/custome_textfield.dart';
import 'package:e_commerce/src/features/home_screen/presentation/screen/home_screen.dart';
import 'package:e_commerce/src/features/shared/sizedbox.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // Top right green circle
            Positioned(
              top: -70,
              right: -70,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Palette.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Bottom left green circle
            Positioned(
              bottom: -50,
              left: -50,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  color: Palette.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 4),

                  // Login title
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Login',
                        style: displayLarge.copyWith(fontSize: 34)),
                  ),
                  kHight(30),

                  // Email/Phone TextField
                  CostumeTextField(
                    controller: phoneNumberController,
                    hintText: "Email or Phone Number",
                    validator: (value) {
                      return null;
                    },
                  ),
                  kHight(30),

                  // Password TextField
                  CostumeTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      return null;
                    },
                  ),
                  kHight(10),

                  // Forgot password link
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot password?',
                          style: bodyMedium.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Palette.grey),
                        )),
                  ),
                  kHight(20),

                  // Login Button
                  CostumeBotton(
                    label: 'LOGIN',
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                    },
                  ),
                  const Spacer(flex: 2),

                  // Sign-up link
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: bodyMedium.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Palette.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.signupScreen);
                          },
                          child: Text(
                            'Sign up',
                            style: bodyMedium.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Palette.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
