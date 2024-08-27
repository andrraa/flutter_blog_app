import 'package:blog_app/cores/extension/app_extension.dart';
import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final bool isSignUpScreen;
  final VoidCallback? onTap;

  const AuthHeader({
    super.key,
    required this.title,
    this.isSignUpScreen = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.18,
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.all(isSignUpScreen ? 4 : 16),
            child: Row(
              children: [
                isSignUpScreen
                    ? GestureDetector(
                        onTap: onTap,
                        child: const Icon(
                          Icons.chevron_left,
                          size: 38,
                          color: AppPallete.whiteColor,
                        ),
                      )
                    : const SizedBox.shrink(),
                Text(
                  title,
                  style: const TextStyle(
                    color: AppPallete.whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
