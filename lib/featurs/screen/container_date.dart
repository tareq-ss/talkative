


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theme/app_color.dart';

class ContainerDate extends StatelessWidget {
  final bool isActive;
  final void Function()? onTap;
  final String title;
  final String date;
  final String day;
  const ContainerDate({super.key, required this.isActive, this.onTap, required this.title, required this.date, required this.day});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(

          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            color: isActive? AppColor.mainColor: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              Text(title,
              style: TextStyle(
                fontSize: 15.sp,
                color: isActive? Colors.white: Colors.black
              ),),
              Text(date,
              style: TextStyle(
                fontSize:30.sp,
              fontWeight: FontWeight.bold,
              color: isActive? Colors.white: Colors.black),),
              Text(day,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
                color: isActive? Colors.white: Colors.black
              ),)
            ],
          ),

      ),
    );
  }
}
