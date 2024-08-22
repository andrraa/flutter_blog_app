import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/cores/theme/theme.dart';

class AuthFooter extends StatelessWidget {
  final String parentText;
  final String childText;

  final VoidCallback onClick;

  const AuthFooter({
    super.key,
    required this.parentText,
    required this.childText,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: parentText,
        style: Theme.of(context).textTheme.titleMedium,
        children: [
          TextSpan(
            text: childText,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppPalette.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
            recognizer: TapGestureRecognizer()..onTap = onClick,
          ),
        ],
      ),
    );
  }
}
