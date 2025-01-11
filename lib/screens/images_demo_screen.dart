import 'package:flutter/material.dart';

class ImagesDemoScreen extends StatelessWidget {
  const ImagesDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: const Text('Images Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/abid.png'),
              ),

              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/38/b4/54/38b4542398fe81d53023d0397bccb2b7.jpg'),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),

              ),

              Image.network(
                'https://i.pinimg.com/736x/38/b4/54/38b4542398fe81d53023d0397bccb2b7.jpg',
                width: 200,
                height: 200,
              ),
              Image(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/38/b4/54/38b4542398fe81d53023d0397bccb2b7.jpg'),
                width: 200,
                height: 200,
              ),
              Image.asset("images/abid.png"),
              Image(
                image: AssetImage('images/abid.png'),
              )
            ],
          ),
        ));
  }
}
