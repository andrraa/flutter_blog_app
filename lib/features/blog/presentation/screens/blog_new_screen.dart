import 'package:flutter/material.dart';

class BlogNewScreen extends StatefulWidget {
  const BlogNewScreen({super.key});

  @override
  State<BlogNewScreen> createState() => _BlogNewScreenState();
}

class _BlogNewScreenState extends State<BlogNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Blog New Screen'),
      ),
    );
  }
}
