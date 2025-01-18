
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Courses Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Card(
            color: Colors.amber,
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Flutter App Dev'),
              subtitle: Text('Become a Professional App Developer'),

            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Web App Dev'),
              subtitle: Text('Become a Professional Web Developer'),

            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Artificial Intelligence'),
              subtitle: Text('Become a Professional AI Developer'),

            ),
          ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")),
        ],),
      )
    );
  }
}
