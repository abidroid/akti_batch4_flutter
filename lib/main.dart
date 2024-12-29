import 'package:akti_batch4_flutter/screens/first_screen.dart';
import 'package:akti_batch4_flutter/screens/second_screen.dart';
import 'package:akti_batch4_flutter/screens/stack_demo_screen.dart';
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
      home: const StackDemoScreen(), // launcher screen
    );
  }
}
