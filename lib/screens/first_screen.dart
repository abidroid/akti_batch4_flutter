import 'package:akti_batch4_flutter/screens/images_demo_screen.dart';
import 'package:akti_batch4_flutter/screens/second_screen.dart';
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
      body: Column(
        children: [
          Text('My Calculator', style: TextStyle(
            fontSize: 50.0,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            wordSpacing: 15,
          
            backgroundColor: Colors.amber,
          ),),
          
          ElevatedButton(onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return SecondScreen();
            }));


          }, child: const Text('Go to 2nd Screen')),

          ElevatedButton(onPressed: (){

           Navigator.of(context).push(MaterialPageRoute(builder: (context){
             return ImagesDemoScreen();
           }));


          }, child: const Text('Go to Images Screen')),
          
        ],
      ),
    );
  }
}
