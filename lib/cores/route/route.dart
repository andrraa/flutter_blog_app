import 'package:flutter/material.dart';
import 'package:todo_app/features/authentication/presentation/pages/signin_page.dart';
import 'package:todo_app/features/authentication/presentation/pages/signup_page.dart';

class AppRoute {
  static signIn() => MaterialPageRoute(
        builder: (context) => const SignInPage(),
      );

  static signUp() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );
}
