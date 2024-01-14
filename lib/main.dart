import 'package:flutter/material.dart';
import 'package:student_records_final/edit_record.dart';
import 'package:student_records_final/list_student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.cyanAccent,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(fontSize: 30, color: Colors.black))),
      debugShowCheckedModeBanner: false,
      home: const EditRecords(),
    );
  }
}
