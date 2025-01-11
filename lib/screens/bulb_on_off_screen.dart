import 'package:flutter/material.dart';

class BulbOnOffScreen extends StatefulWidget {
  const BulbOnOffScreen({super.key});

  @override
  State<BulbOnOffScreen> createState() => _BulbOnOffScreenState();
}

class _BulbOnOffScreenState extends State<BulbOnOffScreen> {

  // initial state
  bool switchStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: const Text('Bulb On/Off'),
        ),
        body: Column(
          children: [
            Icon(Icons.bolt, size: 250, color: switchStatus ? Colors.amber : Colors.black,),
            Switch(value: switchStatus, onChanged: (newValue) {
              switchStatus = newValue;
              setState(() {

              });

            })
          ],
        ));
  }
}
