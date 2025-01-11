import 'package:flutter/material.dart';

class StatefulDemoScreen extends StatefulWidget {
   StatefulDemoScreen({super.key}){
    print('constructor executed');
  }

  @override
  State<StatefulDemoScreen> createState() => _StatefulDemoScreenState();
}

class _StatefulDemoScreenState extends State<StatefulDemoScreen> {

  // initial state ko define krta ha
  // state variables
  String message = "Welcome";
  Color color = Colors.amber;

  @override
  void initState() {
    print('**** init state executed ****');
    super.initState();
  }

  // UI ko render krta ha
  @override
  Widget build(BuildContext context) {
    print('*** build executed ***');
    return Scaffold(
      backgroundColor: color, // hard coded
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Stateful Demo Screen"),
      ),
      body: Column(
        children: [
           Text(
            message,
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {

                message = "Arfa Karim";

                // it will call build function and
                // the screen will refresh
                setState(() {

                });
              },
              child: const Text('Change')),

          Text(
            message,
            style: TextStyle(fontSize: 40),
          ),

          ElevatedButton(onPressed: (){
            color = Colors.red;
            setState(() {

            });
          }, child: const Text("Red")),
          ElevatedButton(onPressed: (){
            color = Colors.green;
            setState(() {

            });
          }, child: const Text("Green")),
          ElevatedButton(onPressed: (){
            color = Colors.blue;
            setState(() {

            });
          }, child: const Text("Blue")),
        ],
      ),
    );
  }
}
