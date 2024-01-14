import 'package:flutter/material.dart';
import 'package:student_records_final/list_student.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  toListofStudents() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const ListStudent()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Student Register'),
        actions: [
          IconButton(onPressed: toListofStudents, icon: const Icon(Icons.more))
        ],
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
              ElevatedButton(onPressed: () {}, child: const Text('+ ADD'))
            ],
          ),
        ),
      ),
    );
  }
}
