import 'package:e_commerce/src/app/themes.dart';
import 'package:e_commerce/src/core/utils/assets.dart';
import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:e_commerce/src/features/authentication/presentation/widgets/custome_button.dart';
import 'package:e_commerce/src/features/authentication/presentation/widgets/custome_textfield.dart';
import 'package:e_commerce/src/features/shared/sizedbox.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController phoneNumberEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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
                  kHight(15),
                  // Login title
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Sign Up',
                        style: displayLarge.copyWith(fontSize: 34)),
                  ),
                  kHight(20),

                  // Email/Phone TextField
                  CostumeTextField(
                    controller: phoneNumberEmailController,
                    hintText: "Email or Phone Number",
                    validator: (value) {
                      return null;
                    },
                  ),
                  kHight(15),

                  // Password TextField
                  CostumeTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      return null;
                    },
                  ),
                  kHight(15),
                  // Password TextField
                  CostumeTextField(
                    controller: confirmpasswordController,
                    hintText: 'Confirm Password',
                    validator: (value) {
                      return null;
                    },
                  ),
                  kHight(40),

                  // SignUp Button
                  CostumeBotton(
                    label: 'SIGN UP',
                    onPressed: () {},
                  ),
                  kHight(15),
                  Text(
                    "Or Sign in with",
                    style: bodyMedium.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Palette.grey),
                  ),
                  kHight(15),
                  // -----gole and face book auth--------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 66,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Palette.lightGrey,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(child: Image.asset(Assets.googleIcon)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 66,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Palette.lightGrey,
                              borderRadius: BorderRadius.circular(6)),
                          child:
                              Center(child: Image.asset(Assets.facebookIcon)),
                        ),
                      )
                    ],
                  ),

                  kHight(20),

                  // Sign-up link
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?  ",
                          style: bodyMedium.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Palette.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Log in',
                            style: bodyMedium.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Palette.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
