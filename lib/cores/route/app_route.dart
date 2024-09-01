import 'package:blog_app/features/auth/presentation/screens/signin_screen.dart';
import 'package:blog_app/features/auth/presentation/screens/signup_screen.dart';
import 'package:blog_app/features/blog/presentation/screens/blog_new_screen.dart';
import 'package:blog_app/features/blog/presentation/screens/blog_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static signInRoute() => MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      );

  static signUpRoute() => MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );

  static blogRoute() => MaterialPageRoute(
        builder: (context) => const BlogScreen(),
      );

  static blogNewRoute() => MaterialPageRoute(
        builder: (context) => const BlogNewScreen(),
      );
}
