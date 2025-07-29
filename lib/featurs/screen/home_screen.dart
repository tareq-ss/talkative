

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/featurs/screen/costem_app_bar.dart';
import 'package:task_app/featurs/screen/home_header.dart';
import 'package:task_app/featurs/screen/list_tasks.dart';
import 'package:task_app/featurs/screen/task_filter_date.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
            CostemAppBar(),
              SizedBox(height: 10.h,),
              HomeHeader(),
              SizedBox(height: 10.h,),
              TaskFilterDate(),
              SizedBox(height: 30.h,),
               ListTasks(
              )
            ],
          ),
        ),
      ),
    );
  }
}
