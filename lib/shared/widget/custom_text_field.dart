import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final bool isPassword;
  final bool isEmail;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    this.isPassword = false,
    this.isEmail = false,
    this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          color: const Color(0xFFBCBBC1).withOpacity(0.2),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          margin: const EdgeInsets.only(top: 8),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: label,
              suffixIcon: suffixIcon,
            ),
            onChanged: onChanged,
            keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
            obscureText: isPassword,
          ),
        ),
      ],
    );
  }
}
