import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({super.key});
  bool isHidden = true;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isHidden,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              widget.isHidden = !widget.isHidden;
            });
          },
          icon: widget.isHidden
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
        ),
        fillColor: Color(0xFFf7f8f9),
        filled: true,
        hintText: 'Enter your password',
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
