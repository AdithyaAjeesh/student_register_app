import 'package:flutter/material.dart';
import 'package:student_records_final/fnction/function.dart';
import 'package:student_records_final/model/model.dart';
import 'package:student_records_final/todo_list_screen.dart';

class ListStudent extends StatefulWidget {
  const ListStudent({super.key});

  @override
  State<ListStudent> createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
  toAddStudent() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const ListScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Add Student'),
      ),
      body: ValueListenableBuilder(builder: BuildContext  ctx List<Studentmodel>studentlist, Widget? child
      valueListenable: studentlist,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Name $index'),
                subtitle: Text('Age $index'),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 50),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toAddStudent,
        child: const Text('+ ADD'),
      ),
    );
  }
}
