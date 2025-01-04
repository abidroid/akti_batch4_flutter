import 'package:akti_batch4_flutter/models/doctor.dart';
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

    List<Doctor> doctorsList = [

      // objects
      Doctor(name: 'Ali', spe: 'ENT', address: 'Dabgari peshawar', fee: "2000", clinicTime: '4pm - 8pm'),
      Doctor(name: 'Hina', spe: 'Cardiologist', address: 'Dabgari peshawar', fee: "2000", clinicTime: '8am - 4pm'),
      Doctor(name: 'Bilal', spe: 'Ortho', address: 'Dabgari peshawar', fee: "2000", clinicTime: '5pm - 8pm'),
      Doctor(name: 'Zia', spe: 'Gastro', address: 'Dabgari peshawar', fee: "2000", clinicTime: '6pm - 9pm'),
      Doctor(name: 'Gia', spe: 'Gynae', address: 'Dabgari peshawar', fee: "2000", clinicTime: '4pm - 8pm'),
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("ListView Demo 2"),
      ),
      body: ListView.builder(
          itemCount: doctorsList.length,
          itemBuilder: (BuildContext context, int index) {
            // item

            return Card(
              margin: EdgeInsets.only(bottom: 10),
              child:  ListTile(
                leading: CircleAvatar(),
                title: Text(doctorsList[index].name),
                subtitle: Text(doctorsList[index].spe),
                trailing: Text(doctorsList[index].clinicTime),
                onTap: (){},
              ),
            );
          }),
    );
  }
}
