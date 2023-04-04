import 'package:flutter/material.dart';
import 'package:flutter_golang/colors/app_colors.dart';
import 'package:flutter_golang/screens/add_task.dart';
import 'package:flutter_golang/screens/all_tasks.dart';
import 'package:flutter_golang/widgets/button_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/welcome.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                      fontSize: 50,
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\nstart your beautiful day',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.smallTextColor,
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const AddTask(),
                    transition: Transition.zoom,
                    duration: const Duration(milliseconds: 500));
              },
              child: ButtonWidget(
                  backgroundColor: AppColors.mainColor,
                  text: 'Add Task',
                  textColor: Colors.white),
            ),
            const SizedBox(
              height: 14,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const AllTasks(),
                    transition: Transition.fade,
                    duration: const Duration(seconds: 1));
              },
              child: ButtonWidget(
                  backgroundColor: Colors.white,
                  text: 'View All',
                  textColor: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
