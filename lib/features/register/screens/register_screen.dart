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

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(top: 55, left: 24, right: 24, bottom: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BackButtonTile(onPressed: () {
                Navigator.pop(context);
              }),
              SizedBox(height: 20),
              WelcomeText(
                text: 'Hello! Register to get started',
              ),
              SizedBox(height: 30),
              InputField(
                hint: 'Username',
              ),
              SizedBox(height: 20),
              InputField(
                keyboardType: TextInputType.emailAddress,
                hint: 'Email',
              ),
              SizedBox(height: 20),
              InputField(
                hint: 'Password',
              ),
              SizedBox(height: 20),
              InputField(
                hint: 'Confirm Password',
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  text: 'Register',
                  onpressed: () {},
                  bcolor: AppColours.accentColor,
                  tcolor: AppColours.primaryColor),
              SizedBox(height: 20),
              LoginWith(
                text: 'Or Register with',
              ),
              Expanded(
                child: SizedBox(),
              ),
              RegisterLogin(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                text: 'Already have an account?',
                textButton: 'Login Now',
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
