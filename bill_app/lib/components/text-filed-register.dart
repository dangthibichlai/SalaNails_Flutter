import 'package:flutter/material.dart';

class TextFiledRegister extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const TextFiledRegister(
      {super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }
}
