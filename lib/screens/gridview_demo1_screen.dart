
import 'package:flutter/material.dart';

class GridviewDemo1Screen extends StatelessWidget {
  const GridviewDemo1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("GridView Demo 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

              maxCrossAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

          ),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.brown),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.brown),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.brown),

          Container(color: Colors.brown),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
        ],
        ),
      ),
    );
  }
}
