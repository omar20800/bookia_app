// ignore_for_file: prefer_const_constructors

import 'package:bookia_app/core/appcolour.dart';
import 'package:bookia_app/features/widgets/back_button.dart';
import 'package:bookia_app/features/widgets/custom_button.dart';
import 'package:bookia_app/features/widgets/input_field.dart';
import 'package:bookia_app/features/login/screens/login_screen.dart';
import 'package:bookia_app/features/widgets/login_with.dart';
import 'package:bookia_app/features/login/widgets/password_field.dart';
import 'package:bookia_app/features/widgets/register_login.dart';
import 'package:bookia_app/features/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                      text: 'Forgot Password?',
                    ),
                    Text(
                      'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                      style: TextStyle(
                          fontFamily: 'DM Serif Display',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8391A1)),
                    ),
                    SizedBox(height: 30),
                    InputField(
                      keyboardType: TextInputType.emailAddress,
                      hint: 'Enter your email',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        text: 'Send Code',
                        onpressed: () {},
                        bcolor: AppColours.accentColor,
                        tcolor: AppColours.primaryColor),
                    Expanded(child: SizedBox()),
                    RegisterLogin(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      text: 'Remember Password?',
                      textButton: 'Login',
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
