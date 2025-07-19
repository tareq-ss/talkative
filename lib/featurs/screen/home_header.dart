

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theme/app_color.dart';
import 'package:task_app/featurs/screen/add_tasks.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("October 30,2025",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: Colors.black,
            ),),
            Text("Today",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),)
          ],
        ),
        InkWell(
          onTap: (){
            
            Navigator.push(context, MaterialPageRoute(builder: (context) =>AddTasks()));
            
          },
          child: Container(
           padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
            decoration: BoxDecoration(
              color: AppColor.mainColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
              child: Row(
                children: [
                  Icon(Icons.add,color: Colors.white,size: 25,),
                  Text("Add Task",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: Colors.white
                  ),)
                ],
              ),
            ),
        ),
      ],
    );
  }
}
