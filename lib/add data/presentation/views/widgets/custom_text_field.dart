import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTxt;
  const CustomTextField({
    super.key,
    required this.hintTxt,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        hintText: hintTxt,
      ),
    );
  }
}
