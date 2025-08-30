import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:get/get.dart';
import 'package:hania/controller/controller_login.dart';
import 'package:hania/view/result.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  TextEditingController e1 = new TextEditingController();
  TextEditingController e2 = new TextEditingController();
  var n = "";
  var p = "";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerLogin>(
      init: ControllerLogin(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Get.defaultDialog(
                  title: 'Help',
                  content: Text(
                    'This is a simple login screen. Enter your email and password to log in.',
                  ),
                );
              },
              child: Icon(Icons.help, color: Colors.white),
            ),
            backgroundColor: Colors.indigoAccent,
            title: Center(child: Text('Controller')),
          ),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 70, color: Colors.grey),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email ',
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                  controller: e1,
                  onChanged: (s) {
                    setState(() {
                      n = e1.text;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  controller: e2,
                  onChanged: (s) {
                    setState(() {
                      p = e2.text;
                    });
                  },
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     // Get.defaultDialog(title: 'login');
              //     // if (n == '' || n == null) {
              //     //   Get.snackbar('error in the informations', 'error in password');
              //     //   return;
              //     // } else {
              //     //   Get.snackbar('success', 'welcome $n');
              //     //   Get.to(ScreenResult(result: 100, name: n));
              //     // }
              //     controller.login(n, p);
              //   },
              //   child: Text('login'),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwipeButton.expand(
                  thumb: Icon(Icons.double_arrow_rounded, color: Colors.white),
                  child: Text(
                    "Swipe to login ",
                    style: TextStyle(color: Colors.red),
                  ),

                  activeThumbColor: Colors.red,
                  activeTrackColor: Colors.grey.shade300,
                  onSwipe: () {
                    controller.login(n, p);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
