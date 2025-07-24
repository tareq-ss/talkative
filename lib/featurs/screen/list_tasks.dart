

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/featurs/home/models/model_task.dart';
import 'package:task_app/featurs/home/task_item.dart';
import '../../core/theme/app_color.dart';

class ListTasks extends StatelessWidget {
  const ListTasks({super.key,});

  @override
  Widget build(BuildContext context) {
    return ModelTask.tasks.isEmpty?Column(
      children: [
        Image.asset("assets/images/pngtree-colorful-icon-of-an-empty-list-of-tasks-vector-png-image_15719592.png"),
        SizedBox(height: 20.h,),
        Text("you do not have any tasks yet!",
        style: TextStyle(
          fontSize: 18.sp,
          color: Colors.grey,
          fontWeight: FontWeight.w500
        ),)
      ],
    ) : Expanded(
      child: ListView.separated(
          separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
          itemCount: ModelTask.tasks.length,
          itemBuilder: (context,index){
            return Dismissible(
                key: UniqueKey(),
                child: TaskItem(
                  TaskModel: ModelTask.tasks[index]
                ));
          }

      ),
    );
  }
}
