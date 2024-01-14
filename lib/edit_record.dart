import 'package:flutter/material.dart';

class EditRecords extends StatefulWidget {
  const EditRecords({super.key});

  @override
  State<EditRecords> createState() => _EditRecordsState();
}

class _EditRecordsState extends State<EditRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Records'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(hintText: 'Enter your Name'),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(hintText: 'Enter your Age'),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration:
                    InputDecoration(hintText: 'Entere your PhoneNumber'),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(hintText: 'Enter your Address'),
              ),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: () {}, child: const Text('Edit'))
            ],
          ),
        ),
      ),
    );
  }
}
