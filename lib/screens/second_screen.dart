import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("Container Demo"),
      ),
      body: Container(
        // outside
        margin: EdgeInsets.only(left: 20, top: 50),

        // inside
        padding: EdgeInsets.only(top: 50, left: 50),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue, width: 5),
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.orange,
              Colors.cyan,
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),

        width: 200,
        height: 200,
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
