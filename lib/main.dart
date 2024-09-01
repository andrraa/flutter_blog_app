import 'package:blog_app/cores/theme/app_theme.dart';
import 'package:blog_app/cores/widgets/app_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppMenu(),
    );
  }
}
