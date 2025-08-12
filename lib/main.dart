import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hania/view/screen_home.dart'; // Make sure this path is correct and the file contains ScreenHome widget

void main() {
  runApp(GetMaterialApp(home: ScreenHome(), debugShowCheckedModeBanner: false));
}
