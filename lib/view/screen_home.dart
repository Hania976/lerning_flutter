import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int a = 0;
  List<String> tasbih = [
    'subhan allah',
    'alhamdullilah',
    'allahu akbar',
    'la ilaha illallah',
  ];
  void add() {
    setState(() {
      a++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 149, 177),
        title: Center(
          child: Text(
            'tasbih',
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tasbih[a], style: TextStyle(fontSize: 35)),
            GestureDetector(
              onTap: () {
                setState(() {
                  add();
                });
              },
              child: CircleAvatar(
                radius: 60,
                backgroundColor: const Color.fromARGB(255, 235, 149, 177),
                child: Text(
                  '$a',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  a = 0;
                });
              },
              child: Text(
                'clear',
                style: TextStyle(
                  fontSize: 35,
                  color: const Color.fromARGB(255, 112, 91, 107),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
