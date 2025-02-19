// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.hint = '',  this.keyboardType = TextInputType.text,
  });
  final String hint;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Color(0xFFf7f8f9),
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
            fontFamily: 'DM Serif Display',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8391A1)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF8391A1), width: 1),
        ),
      ),
    );
  }
}
