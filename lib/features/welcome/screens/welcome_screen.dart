// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bookia_app/core/appcolour.dart';
import 'package:bookia_app/features/widgets/custom_button.dart';
import 'package:bookia_app/features/login/screens/login_screen.dart';
import 'package:bookia_app/features/register/screens/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(22),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 200,
            ),
            Text(
              'Order Your Book Now!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'DM Serif Display'),
            ),
            SizedBox(height: 300),
            CustomButton(
              text: 'Login',
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              bcolor: AppColours.accentColor,
              tcolor: AppColours.primaryColor,
            ),
            SizedBox(height: 20),
            CustomButton(
                text: 'Register',
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                bcolor: AppColours.primaryColor,
                tcolor: AppColours.secondaryColor,
                sidecolor: AppColours.secondaryColor),
          ]),
        ));
  }
}
