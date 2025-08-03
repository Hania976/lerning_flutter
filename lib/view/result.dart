import 'package:flutter/material.dart';

class ScreenResult extends StatelessWidget {
  const ScreenResult({required this.result, required this.name});
final int result;
final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Result'),
      ),
      body: Center(child: Text('result of $name is :$result '),),
    );
  }
}