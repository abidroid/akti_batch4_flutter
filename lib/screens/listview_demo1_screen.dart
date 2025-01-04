
import 'package:flutter/material.dart';

class ListviewDemo1Screen extends StatelessWidget {
  const ListviewDemo1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("ListView Demo 1"),
      ),
      body: ListView(
        children: [
          // 3 types
          // ElevatedButton

          Container(
            height: 100,
            color: Colors.grey,
            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                Icon(Icons.shopping_cart, size: 50,),
                Icon(Icons.settings, size: 50,),
                Icon(Icons.add, size: 50,),
                Icon(Icons.person, size: 50,),
                Icon(Icons.logout, size: 50,),
                Icon(Icons.shopping_cart, size: 50,),
                Icon(Icons.settings, size: 50,),
                Icon(Icons.add, size: 50,),
                Icon(Icons.person, size: 50,),
                Icon(Icons.logout, size: 50,),
                Icon(Icons.shopping_cart, size: 50,),
                Icon(Icons.settings, size: 50,),
                Icon(Icons.add, size: 50,),
                Icon(Icons.person, size: 50,),
                Icon(Icons.logout, size: 50,),
              ],
            ),
          ),

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

          Container(height: 400, color: Colors.red,),
          Container(height: 400, color: Colors.blue,),
        ],
      ),
    );
  }
}
