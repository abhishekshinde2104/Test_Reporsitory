import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remicarefinal/utility/colors.dart';

import 'UI/add_reminder.dart';
import 'UI/home_screen.dart';
import 'UI/set_timer.dart';
import 'UI/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF008080, color),
      ),
      home: HomeScreen(),
    );
  }
}
