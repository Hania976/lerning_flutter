import 'package:flutter/material.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Like Screen'), backgroundColor: Colors.pink),
      body: Center(
        child: Text(
          'This is the Like Screen',
          style: TextStyle(fontSize: 24, color: Colors.pinkAccent),
        ),
      ),
    );
  }
}
