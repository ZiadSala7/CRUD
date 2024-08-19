import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintTxt;
  const CustomTextField({
    super.key,
    required this.hintTxt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        hintText: hintTxt,
      ),
    );
  }
}
