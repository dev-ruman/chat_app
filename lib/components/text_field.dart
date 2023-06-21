import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obsecureText;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.obsecureText,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      decoration: InputDecoration(
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)),
        fillColor: Colors.grey[400],
        filled: true,
        hintText: hintText,
      ),
      controller: controller,
      obscureText: obsecureText,
    ));
  }
}
