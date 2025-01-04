import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Buttons"),
      ),
      body: Column(
        children: [
          // 3 types
          // ElevatedButton

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text('LOGIN'),
            ),
          ),

          // TextButton
          TextButton(
            onPressed: () {},
            child: Text('Not registered yet? SIGN UP'),
          ),

          // Outlined Button

          OutlinedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {},
              child: Text("Subscribe My Youtube")),

          ElevatedButton.icon(
            onPressed: () {},
            label: Text('Shop Now'),
            icon: Icon(Icons.shopping_cart),
          ),

          Icon(Icons.settings),
          IconButton(onPressed: (){}, icon: Icon(Icons.rss_feed)),
        ],
      ),
    );
  }
}
