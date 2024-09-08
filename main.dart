import 'package:flutter/material.dart';
import 'package:main/menu.dart';
import 'package:main/recepient.dart';

/*223001254 MI MTYALI
223009523 SB TSHIMUKA
223000453 NH MATSANE 
223031859 K RAMOLISE
222009992 T CHIKAKA
223007410 T MANOSA
223042658 A MTSHONISWA
223026092 SS SHANGE */
/*Question 1: Home Page */
void main() {
  runApp(const MyApp());
}

//import 'dart:math';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const MenuScreen(),
        '/third': (context) => const MyThirdApp(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to ePay',
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.green,
      body: Center(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            width: 150,
            height: 250,
            child: const Icon(
              Icons.attach_money,
              size: 150,
              color: Colors.green,
            ),
          ),
          const Text(
            'Money In Your Pocket',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: const BoxDecoration(color: Colors.black),
              width: 350,
              child: ListTile(
                title: const Text(
                  'Main Menu',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.green),
                onTap: () {
                  Navigator.pushNamed(context, '/second'); //navigates to menu.dart
                },
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: const BoxDecoration(color: Colors.black),
              width: 350,
              child: const ListTile(
                title: Text(
                  'Check Rates',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.green),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: const BoxDecoration(color: Colors.black),
              width: 350,
              child: const ListTile(
                title: Text(
                  'WhatsApp ePay',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.green),
              )),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Forgot Your Pin?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          const Text(
            'Dial *134*542# to Reset it',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
