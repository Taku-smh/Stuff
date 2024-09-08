//import 'dart:math';

import 'package:flutter/material.dart';
/*223001254 MI MTYALI
223009523 SB TSHIMUKA
223000453 NH MATSANE 
223031859 K RAMOLISE
222009992 T CHIKAKA
223007410 T MANOSA
223042658 A MTSHONISWA
223026092 SS SHANGE */
/*Question 2: Main Menu Page */
void main() {
  runApp(const MySecondApp());
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'ePay Main Menu',
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        
        body: Center(
          child: Column(
            children: [
              Card(
                
                elevation: 4.0,

                child: ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: const Text('Recipients'),
                  trailing: const Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  onTap: () {
                    Navigator.pushNamed(context, '/third'); //navigates to recepient.dart
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.green),
                  title: Text('My profile'),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  title: Text('Contact ePay'),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app, color: Colors.green),
                  title: Text('Sign out'),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              )

              
            ],
          ),
        ));
  }
}
