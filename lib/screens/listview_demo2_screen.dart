import 'package:flutter/material.dart';

class ListviewDemo2Screen extends StatelessWidget {
  const ListviewDemo2Screen({super.key});

  @override
  Widget build(BuildContext context) {

    // hard coded data
    List<String> friendList = [
      'Ali',
      "khan",
      "Hina",
      "Bilal",
      "Zia",
      "Burhan",
      "Zahid",
      "Shahid"
      "Arham",
      "Faseeh",
      "Elia"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("ListView Demo 2"),
      ),
      body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (BuildContext context, int index) {
            // item

            return Card(
              margin: EdgeInsets.only(bottom: 10),
              child:  ListTile(
                leading: CircleAvatar(),
                title: Text(friendList[index]),
                subtitle: Text('my best friend'),
                trailing: Text('11:20am'),
                onTap: (){},
              ),
            );
          }),
    );
  }
}
