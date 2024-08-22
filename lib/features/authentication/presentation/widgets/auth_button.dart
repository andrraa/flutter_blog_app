import 'package:flutter/material.dart';
import 'package:todo_app/cores/theme/theme.dart';

class AuthButton extends StatelessWidget {
  final String buttonTitle;

  const AuthButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: AppPalette.primaryColor,
        foregroundColor: Colors.white,
      ),
      child: Text(
        buttonTitle,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
