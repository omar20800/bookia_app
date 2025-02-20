// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key, required this.text,required this.onpressed, required this.bcolor, required this.tcolor,this.sidecolor,
  });
  final String text;
  
  Function onpressed;
  final Color bcolor;
  final Color tcolor;
  final Color? sidecolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: sidecolor == null ? Colors.transparent : sidecolor!, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: bcolor,
          ),
          onPressed: () {onpressed();},
          child: Text(text,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: tcolor,
                  fontFamily: 'DM Serif Display'))),
    );
  }
}
