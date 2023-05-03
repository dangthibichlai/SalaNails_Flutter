import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const CustomRowText(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 2, child: Text(text)),
        Expanded(
          flex: 4,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
