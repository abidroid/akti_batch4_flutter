import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('AKTI 4'),


      ),
      body: Text('My Calculator', style: TextStyle(
        fontSize: 50.0,
        color: Colors.blue,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        wordSpacing: 15,

        backgroundColor: Colors.amber,
      ),),
    );
  }
}
