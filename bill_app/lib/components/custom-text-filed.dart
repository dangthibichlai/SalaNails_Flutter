import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double radius;
  final bool isPassword;
  final IconData? icon;
  const CustomTextFiled(
      {super.key,
      required this.hintText,
      required this.controller,
      this.radius = 10,
      this.isPassword = false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 251, 250, 250),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 226, 224, 224),
              offset: Offset(2, 2),
              blurRadius: 2,
              spreadRadius: 2,
            )
          ]),
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: const BorderSide(color: Colors.blue))),
      ),
    );
  }
}
