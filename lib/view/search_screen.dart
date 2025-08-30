import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Screen'),
        backgroundColor: const Color.fromARGB(255, 128, 45, 124),
      ),
      body: Center(
        child: Text(
          'This is the Search Screen',
          style: TextStyle(
            fontSize: 24,
            color: const Color.fromARGB(255, 127, 28, 122),
          ),
        ),
      ),
    );
  }
}
