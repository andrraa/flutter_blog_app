import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final TextEditingController controller;

  const AuthFormField({
    super.key,
    required this.hintText,
    this.isObsecure = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppPallete.transparentColor,
            width: 0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppPallete.transparentColor,
            width: 0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppPallete.errorColor,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppPallete.transparentColor,
            width: 0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        fillColor: AppPallete.formFieldColor,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppPallete.greyColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      obscureText: isObsecure,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText Tidak Boleh Kosong!';
        }
        return null;
      },
    );
  }
}
