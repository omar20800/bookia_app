// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bookia_app/core/appcolour.dart';
import 'package:bookia_app/features/widgets/back_button.dart';
import 'package:bookia_app/features/widgets/custom_button.dart';
import 'package:bookia_app/features/forgot%20password/screens/forgot_password.dart';
import 'package:bookia_app/features/widgets/input_field.dart';
import 'package:bookia_app/features/widgets/login_with.dart';
import 'package:bookia_app/features/login/widgets/password_field.dart';
import 'package:bookia_app/features/widgets/register_login.dart';
import 'package:bookia_app/features/register/screens/register_screen.dart';
import 'package:bookia_app/features/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 55, left: 24, right: 24, bottom: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackButtonTile(onPressed: () {
                      Navigator.pop(context);
                    }),
                    SizedBox(height: 20),
                    WelcomeText(
                      text: 'Welcome back! Glad to see you, Again!',
                    ),
                    SizedBox(height: 30),
                    InputField(
                      keyboardType: TextInputType.emailAddress,
                      hint: 'Enter your email',
                    ),
                    SizedBox(height: 20),
                    PasswordField(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'DM Serif Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8391A1)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        text: 'Login',
                        onpressed: () {},
                        bcolor: AppColours.accentColor,
                        tcolor: AppColours.primaryColor),
                    SizedBox(height: 20),
                    LoginWith(
                      text: 'Or Login with',
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    RegisterLogin(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      text: 'Don\'t have an account?',
                      textButton: 'Register Now',
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
