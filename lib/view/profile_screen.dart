import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
        backgroundColor: const Color.fromARGB(255, 128, 45, 124),
      ),
      body: Center(
        child: Text(
          'This is the Profile Screen',
          style: TextStyle(
            fontSize: 24,
            color: const Color.fromARGB(255, 127, 28, 122),
          ),
        ),
      ),
    );
  }
}
