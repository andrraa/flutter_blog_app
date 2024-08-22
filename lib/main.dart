import 'package:flutter/material.dart';
import 'package:todo_app/cores/theme/theme.dart';
import 'package:todo_app/features/authentication/presentation/pages/signin_page.dart';

void main() {
  runApp(const BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SignInPage(),
    );
  }
}
