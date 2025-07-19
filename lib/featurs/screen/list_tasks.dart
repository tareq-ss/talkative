

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/app_color.dart';
class ListTasks extends StatefulWidget {

  const ListTasks({super.key});

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
          separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
          itemCount: 3,
          itemBuilder: (context,index){
            return Dismissible(
                key: UniqueKey(),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Flutter Task_ $index",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    Icon(Icons.schedule,color: Colors.white,size: 20,),
                                    SizedBox(width: 10.w,),
                                    Text("02:25AM_02:45AM",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colors.white
                                      ),)
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Text("I Will do This Task",
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
                            child: Text("TODO",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),),
                          )
                        ],
                      ),
                    )
                ));
          }

      ),
    );
  }
}
