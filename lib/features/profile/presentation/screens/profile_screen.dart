import 'package:blog_app/features/profile/presentation/widgets/profile_blog_data.dart';
import 'package:blog_app/features/profile/presentation/widgets/profile_user_data.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PROFILE',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ProfileUserData(
              name: 'Andra Ramadan Pratama',
              email: 'andraramadanp@gmail.com',
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ProfileBlogData(
                    title: 'Posted Blogs',
                    value: '1000',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ProfileBlogData(
                    title: 'Saved Blogs',
                    value: '500',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
