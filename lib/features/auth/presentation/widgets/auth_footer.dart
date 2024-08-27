import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const AuthFooter({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: title,
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: subTitle,
              style: const TextStyle(
                color: AppPallete.primaryColor,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onTap();
                },
            ),
          ],
        ),
      ),
    );
  }
}
