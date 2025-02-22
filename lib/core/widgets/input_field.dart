// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    super.key,
    this.hint = '',
    this.keyboardType = TextInputType.text,
    required this.ispassword,
  });
  final bool ispassword;
  final String hint;
  final TextInputType keyboardType;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is can't be empty";
        }
        return null;
      },
      obscureText: widget.ispassword
          ? showPassword
              ? true
              : false
          : false,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        suffixIcon: widget.ispassword
            ? IconButton(
                icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              )
            : null,
        fillColor: Color(0xFFf7f8f9),
        filled: true,
        hintText: widget.hint,
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
