

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/featurs/home/models/model_task.dart';

import '../../core/theme/app_color.dart';

class TaskItem extends StatelessWidget {
  final ModelTask TaskModel;
  const TaskItem({super.key, required this.TaskModel});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.w),
        decoration: BoxDecoration(
          color: TaskModel.TaskColors,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(TaskModel.title,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Icon(Icons.schedule,color: Colors.white,size: 20,),
                        SizedBox(width: 10.w,),
                        Text("${TaskModel.startTime}_${TaskModel.endTime}",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white
                          ),)
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Text(TaskModel.des,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),)
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.white,
                thickness: 1.w,
                indent: 3.h,
              ),
              RotatedBox(quarterTurns: 3,
                child: Text(TaskModel.status,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: Colors.white),),
              )
            ],
          ),
        )
    );
  }
}
