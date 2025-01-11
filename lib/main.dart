import 'package:akti_batch4_flutter/screens/bulb_on_off_screen.dart';
import 'package:akti_batch4_flutter/screens/button_demo_screen.dart';
import 'package:akti_batch4_flutter/screens/first_screen.dart';
import 'package:akti_batch4_flutter/screens/gridview_demo1_screen.dart';
import 'package:akti_batch4_flutter/screens/images_demo_screen.dart';
import 'package:akti_batch4_flutter/screens/listview_demo1_screen.dart';
import 'package:akti_batch4_flutter/screens/listview_demo2_screen.dart';
import 'package:akti_batch4_flutter/screens/second_screen.dart';
import 'package:akti_batch4_flutter/screens/stack_demo_screen.dart';
import 'package:akti_batch4_flutter/screens/stateful_demo_screen.dart';
import 'package:akti_batch4_flutter/screens/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:  BulbOnOffScreen(), // launcher screen
    );
  }
}
