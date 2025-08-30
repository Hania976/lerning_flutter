import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hania/view/home_screen.dart';
import 'package:hania/view/like_screen.dart';
import 'package:hania/view/profile_screen.dart';
import 'package:hania/view/search_screen.dart';

class ScreenResult extends StatefulWidget {
  const ScreenResult({required this.result, required this.name});
  final int result;
  final String name;

  @override
  State<ScreenResult> createState() => _ScreenResultState();
}

class _ScreenResultState extends State<ScreenResult> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          onTabChange: (int index) {
            print('Selected index: $index');
            setState(() {
              selectedIndex = index;
            });
          },
          rippleColor: const Color.fromARGB(
            255,
            223,
            69,
            69,
          ), // tab button ripple color when pressed
          hoverColor: const Color.fromARGB(
            255,
            240,
            189,
            189,
          ), // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(
            color: Colors.black,
            width: 1,
          ), // tab button border
          tabBorder: Border.all(
            color: Colors.grey,
            width: 1,
          ), // tab button border
          tabShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.purple, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.purple.withOpacity(
            0.1,
          ), // selected tab background color
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ), // navigation bar padding
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.favorite, text: 'Likes'),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}

List<Widget> listScreen = [
  HomeScreen(),
  LikeScreen(),
  SearchScreen(),
  ProfileScreen(),
];
