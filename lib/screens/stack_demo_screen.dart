import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Stack and Positioned'),
      ),

      // column orientation => vertical
      // row orientation => horizontal

      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(width: 400, height: 400, color: Colors.red,),
          Container(width: 200, height: 200, color: Colors.green,),
          Container(width: 100, height: 100, color: Colors.blue,),

          Positioned(
              left: 125,
              bottom: -75,
              child: Container(width: 150, height: 150,

                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle
                ) ,


              )),
        ],
      ),
    );
  }
}
