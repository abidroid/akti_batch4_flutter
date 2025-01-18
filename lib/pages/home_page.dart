import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'contact_us_page.dart';
import 'courses_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7AQ3HKoqZSaVmk-aPz2nLug5wvkxO_M0IIQ&s',

                    fit: BoxFit.fill,
                    )),
              ),

              ListTile(
                leading: Icon(Icons.book),
                title: Text('Courses'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CoursesPage()));
                },
              ),

              ListTile(
                leading: Icon(Icons.mobile_friendly),
                title: Text('Contact Us'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: Text('Home Page'),
        ),
        body: Column(
          children: [
            SvgPicture.network(
              'https://akti.com.pk/wp-content/uploads/2023/08/arfa-karim-technology-incubator_logo.svg',
            ),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7AQ3HKoqZSaVmk-aPz2nLug5wvkxO_M0IIQ&s'),
          ],
        ));
  }

  const HomePage({super.key});
}
