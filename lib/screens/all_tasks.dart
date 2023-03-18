import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang/colors/app_colors.dart';
import 'package:flutter_golang/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    List myData = ["Try harder", "Try smarter"];

    final leftEditIcon = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );

    final rightDeleteIcon = Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.red,
      child: const Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20, top: 60),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/header.jpg'), fit: BoxFit.cover)),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.mainColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(12.5)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.calendar_month,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 20, color: AppColors.mainColor),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: myData.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: leftEditIcon,
                    secondaryBackground: rightDeleteIcon,
                    onDismissed: (DismissDirection direction) =>
                        {print("Hello world")},
                    confirmDismiss: (DismissDirection direction) async {
                      return false;
                      print('hello');
                    },
                    key: ObjectKey(index),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: TaskWidget(
                          text: myData[index], color: Colors.blueGrey),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
