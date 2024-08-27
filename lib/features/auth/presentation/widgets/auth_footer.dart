import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: const TextSpan(
          text: 'Don\'t have an account? ',
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: AppPallete.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
