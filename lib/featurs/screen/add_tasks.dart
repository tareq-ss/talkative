

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theme/app_color.dart';
import 'package:task_app/featurs/form/field_text_screen.dart';
import 'package:task_app/featurs/screen/select_task_color.dart';

class AddTasks extends StatelessWidget {
  AddTasks({super.key});

var validationKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AddTask",style: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          color: AppColor.mainColor
        ),
        textAlign: TextAlign.center
          ,),),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 20.w),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r)
              )
            ),
            onPressed: (){
              validationKey.currentState?.validate();
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Creat Task",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
            )),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
        child: Form(
          key: validationKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FieldTextScreen(title: 'Title',
                  hint: "Enter Title",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Title is required";
                  }
                },
                ),
                SizedBox(height: 15.h,),
                FieldTextScreen(title: "Descirption",
                  hint: "Enter desciption",desLine: 5,
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "des is required";
                    }
                  },),
                SizedBox(height: 15.h,),
                FieldTextScreen(title: "Date",
                  hint: "17-05-2025",suffixIcon: Icon(Icons.calendar_month),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "date is required";
                    }
                  }, onTap: (){
                  showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2027));
                  },),
                SizedBox(height: 15.h,),
                Row(
                  children: [
                    Expanded(child: FieldTextScreen(title: "Start Time", hint: "09:08PM",suffixIcon: Icon(Icons.schedule),
                      validator: (value){
                      if(value==null||value.isEmpty){
                        return "start time is required";
                      }
                    },onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay(hour: 12, minute: 00));
                    },)
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(child: FieldTextScreen(title: "End Time", hint: "10:08PM",suffixIcon: Icon(Icons.schedule),
                      validator: (value){
                      if(value==null||value.isEmpty){
                        return "end time is required";
                      }
                    },))
                  ],
                ),
                SizedBox(height: 15.h,),
                SelectTaskColor(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
