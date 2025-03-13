// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bookia_app/core/colors/appcolour.dart';
import 'package:bookia_app/core/widgets/back_button.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/features/forgot%20password/screens/forgot_password.dart';
import 'package:bookia_app/core/widgets/input_field.dart';
import 'package:bookia_app/core/widgets/login_with.dart';
import 'package:bookia_app/core/widgets/register_login.dart';
import 'package:bookia_app/features/register/screens/register_screen.dart';
import 'package:bookia_app/core/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                        ispassword: false,
                        keyboardType: TextInputType.emailAddress,
                        hint: 'Enter your email',
                      ),
                      SizedBox(height: 20),
                      InputField(
                        ispassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        hint: 'Enter your password',
                      ),
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
                          onpressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      backgroundColor: Colors.green,
                                      content: Text('Processing Data')));
                            }
                          },
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
      ),
    );
  }
}
