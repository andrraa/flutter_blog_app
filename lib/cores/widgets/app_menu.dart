import 'package:blog_app/cores/route/app_route.dart';
import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:blog_app/features/blog/presentation/screens/blog_screen.dart';
import 'package:blog_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({super.key});

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int _selectedIndex = 0;

  void _onSelectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const BlogScreen(),
    const ProfileScreen(),
  ];

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     'BLOG APP',
      //     style: TextStyle(
      //       fontSize: 16,
      //       fontWeight: FontWeight.w900,
      //     ),
      //   ),
      // ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: AppPallete.transparentColor,
          highlightColor: AppPallete.transparentColor,
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: AppPallete.transparentColor,
            highlightColor: AppPallete.transparentColor,
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            items: _items,
            onTap: _onSelectedItem,
            selectedItemColor: AppPallete.primaryColor,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppPallete.greyColor,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, AppRoute.blogNewRoute());
        },
        splashColor: AppPallete.transparentColor,
        backgroundColor: AppPallete.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.add,
          color: AppPallete.whiteColor,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
