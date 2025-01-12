
import 'package:flutter/material.dart';

class SimpleCalcScreen extends StatefulWidget {
  const SimpleCalcScreen({super.key});

  @override
  State<SimpleCalcScreen> createState() => _SimpleCalcScreenState();
}

class _SimpleCalcScreenState extends State<SimpleCalcScreen> {

  var numOneC = TextEditingController();
  var numTwoC = TextEditingController();

  double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Simple Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: numOneC,
              decoration: InputDecoration(
                hintText: "First Number"
              ),
            ),

            TextField(
              keyboardType: TextInputType.number,
              controller: numTwoC,
              decoration: InputDecoration(
                  hintText: "Second Number"
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){

                  String num1 = numOneC.text;
                  double n1 = double.parse(num1);

                  String num2 = numTwoC.text;
                  double n2 = double.parse(num2);

                  result = n1 + n2;

                  setState(() {

                  });

                }, child: const Text("+", style: TextStyle(fontSize: 30),)),
                ElevatedButton(onPressed: (){}, child: const Text("-", style: TextStyle(fontSize: 30),)),
                ElevatedButton(onPressed: (){}, child: const Text("X", style: TextStyle(fontSize: 30),)),
                ElevatedButton(onPressed: (){}, child: const Text("/", style: TextStyle(fontSize: 30),)),

              ],
            ),

            Text(result.toString(), style: TextStyle(fontSize: 30),)

          ],
        ),
      )
    );
  }
}
