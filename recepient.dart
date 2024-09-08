import 'package:flutter/material.dart';

void main() {
  runApp(const MyThirdApp());
}

class MyThirdApp extends StatelessWidget {
  const MyThirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipientList(),
    );
  }
}

class RecipientList extends StatelessWidget {
  final List<String> recipient = [
    'John',
    'Mary',
    'Jane',
    'Johnson',
    'Phillip',
    'George',
    'Gerry',
  ];
  final List<String> numbers = [
    '078654323',
    '074654313',
    '0686654323',
    '079654323',
    '075654323',
    '078654323',
    '078654323',
  ];
  RecipientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/second')); //navigate back to menu.dart
          },
        ),
        title: const Text('List of Recipients'),
      ),
      body: ListView.builder(
        itemCount: recipient.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(recipient[index]),
            subtitle: Text(numbers[index]),
            trailing: const Text('Send Money'),
          );
        },
      ),
    );
  }
}
