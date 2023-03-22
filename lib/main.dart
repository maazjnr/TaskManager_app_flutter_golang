import 'package:flutter/material.dart';
import 'package:flutter_golang/controllers/data_controller.dart';
import 'package:flutter_golang/screens/add_task.dart';
import 'package:flutter_golang/screens/all_tasks.dart';
import 'package:flutter_golang/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

loadData() async {
      await Get.find<DataController>().getData();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataController());
    loadData();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

