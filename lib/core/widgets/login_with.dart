// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bookia_app/core/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(color: Colors.grey),
            ),
            SizedBox(width: 10),
            Text(text,
                style: TextStyle(
                    fontFamily: 'DM Serif Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A707C))),
            SizedBox(width: 10),
            Expanded(
              child: Divider(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SocialButton(
              icon: 'assets/icons/facebook.png',
            ),
            SizedBox(width: 10),
            SocialButton(
              icon: 'assets/icons/google.png',
            ),
            SizedBox(width: 10),
            SocialButton(
              icon: 'assets/icons/apple.png',
            ),
          ],
        )
      ],
    );
  }
}
