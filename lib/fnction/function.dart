import 'package:flutter/material.dart';
import 'package:student_records_final/model/model.dart';

ValueNotifier<List<Studentmodel>> studentlist = ValueNotifier([]);
void addstudent(Studentmodel value) {
  studentlist.value.add(value);
}
