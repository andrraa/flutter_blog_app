import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final bool isObscureText;
  final String placeholder;
  final TextEditingController controller;

  const AuthTextField({
    super.key,
    required this.controller,
    this.isObscureText = false,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
      ),
      obscureText: isObscureText,
      validator: (value) {
        return value!.isEmpty ? "$placeholder Tidak Boleh Kosong!" : null;
      },
    );
  }
}
