import 'package:blog_app/cores/extension/app_extension.dart';
import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String title;

  const AuthHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.18,
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
