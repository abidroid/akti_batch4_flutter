import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Row and Column'),
      ),

      // column orientation => vertical
      // row orientation => horizontal

      body: SingleChildScrollView(
        child: Column(
          spacing: 10, // flutter 3.27
          children: [
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),

            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.amber,),
            Container(width: 100, height: 100, color: Colors.brown,),
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),
            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.amber,),
            Container(width: 100, height: 100, color: Colors.brown,),
          ],
        ),
      ),
    );
  }
}
