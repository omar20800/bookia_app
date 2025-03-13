// ignore_for_file: prefer_const_constructors

import 'package:bookia_app/core/colors/appcolour.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/features/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/success.json',
              height: 200,
              width: 200,
              repeat: false,
            ),
            SizedBox(height: 20),
            Text(
              'Password Changed',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'DM Serif Display'),
            ),
            SizedBox(height: 20),
            Text(
              'Your password has been changed successfully.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8391A1),
                  fontFamily: 'DM Serif Display'),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Back to Login',
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              bcolor: AppColours.accentColor,
              tcolor: AppColours.primaryColor,
            ),
          ],
        )),
      ),
    );
  }
}
