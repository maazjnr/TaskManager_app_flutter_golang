import 'package:flutter/material.dart';
import 'package:flutter_golang/screens/add_task.dart';
import 'package:flutter_golang/screens/all_tasks.dart';
import 'package:flutter_golang/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AllTasks(),
      debugShowCheckedModeBanner: false,
    );
  }
}

