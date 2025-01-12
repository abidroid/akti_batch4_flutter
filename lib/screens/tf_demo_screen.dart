import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TfDemoScreen extends StatefulWidget {
  const TfDemoScreen({super.key});

  @override
  State<TfDemoScreen> createState() => _TfDemoScreenState();
}

class _TfDemoScreenState extends State<TfDemoScreen> {
  TextEditingController nameController = TextEditingController();
  var mobileController = TextEditingController();
  var passwordController = TextEditingController();
  var aboutController = TextEditingController();

  String info = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: const Text('TextField Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 16,
              children: [
                TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.check),
                      prefixIconColor: Colors.red,
                    )),
                TextField(
                    controller: mobileController,
                    keyboardType: TextInputType.phone,
                    maxLength: 11,
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mobile_friendly),
                      suffixIcon: Icon(Icons.check),
                      prefixIconColor: Colors.red,
                    )),
                TextField(
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: '#',
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      prefixIconColor: Colors.red,
                    )),
                TextField(
                    controller: aboutController,
                    maxLines: 8,
                    decoration: InputDecoration(
                      hintText: 'Tell us about yourself',
                      labelText: 'Tell us about yourself',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.list),
                      suffixIcon: Icon(Icons.check),
                      prefixIconColor: Colors.red,
                    )),
                ElevatedButton(
                    onPressed: () {
                      String name = nameController.text;
                      String mobile = mobileController.text;
                      String password = passwordController.text;
                      String about = aboutController.text;

                      if (name.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please provide name",
                            fontSize: 30,
                            backgroundColor: Colors.red,
                            gravity: ToastGravity.TOP);
                        return;
                      }

                      info = '';

                      info += name;
                      info += '\n';
                      info += mobile;
                      info += '\n';
                      info += password;
                      info += '\n';
                      info += about;
                      info += '';

                      setState(() {});
                    },
                    child: const Text("Register")),
                Text(info),
              ],
            ),
          ),
        ));
  }
}
