

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theme/app_color.dart';
import 'package:task_app/featurs/form/field_text_screen.dart';
import 'package:task_app/featurs/home/models/model_task.dart';
import 'package:task_app/featurs/screen/select_task_color.dart';

class AddTasks extends StatelessWidget {
  AddTasks({super.key});

var validationKey=GlobalKey<FormState>();
var titleController=TextEditingController();
var desController=TextEditingController();
TimeOfDay? startTime;
TimeOfDay? endTime;
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
              if(validationKey.currentState?.validate()??false){
                ModelTask(title: titleController.text,
                    startTime: "${startTime?.hour}:${startTime?.minute}",
                    endTime: "${endTime?.hour}:${endTime?.minute}",
                    des: desController.text,
                    status: "Todo",
                    TaskColors: AppColor.orangeColors);
              }
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
                FieldTextScreen(
                controller: titleController  ,
              title: 'Title',
                  hint: "Enter Title",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Title is required";
                  }
                },
                ),
                SizedBox(height: 15.h,),
                FieldTextScreen(
                  controller: desController,
                  title: "Descirption",
                  hint: "Enter descirption",desLine: 5,
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "des is required";
                    }
                  },),
                SizedBox(height: 15.h,),
                FieldTextScreen(title: "Date",
                  hint: "17-05-2025",suffixIcon: Icon(Icons.calendar_month),
                onTap: (){
                  showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2027),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(data: Theme.of(context).copyWith(
                      datePickerTheme: DatePickerThemeData(
                        headerForegroundColor: Colors.black,
                        shadowColor: AppColor.mainColor,
                        rangeSelectionBackgroundColor: AppColor.mainColor
                      )
                    ),
                        child: child!);
                  });
                  },),
                SizedBox(height: 15.h,),
                Row(
                  children: [
                    Expanded(child: FieldTextScreen(title: "Start Time", hint: "09:08PM",suffixIcon: Icon(Icons.schedule),
                    onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay.now(),
                        builder: (BuildContext context, Widget? child) {
                        return Theme(data: Theme.of(context).copyWith(
                          timePickerTheme: TimePickerThemeData(
                            backgroundColor: Colors.white,
                            hourMinuteColor: Colors.grey,
                            dayPeriodColor: AppColor.mainColor,
                            entryModeIconColor: AppColor.mainColor,
                            dialHandColor: AppColor.mainColor
                          ),
                        )
                            , child: child!);
                        }
                      ).then((v){
                        startTime =v;
                      });
                    },)
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(child: FieldTextScreen(title: "End Time", hint: "10:08PM",suffixIcon: Icon(Icons.schedule),
                      onTap: (){
                        showTimePicker(context: context, initialTime: TimeOfDay.now(),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(data: Theme.of(context).copyWith(
                                timePickerTheme: TimePickerThemeData(
                                    backgroundColor: Colors.white,
                                    hourMinuteColor: Colors.grey,
                                    dayPeriodColor: AppColor.mainColor,
                                    entryModeIconColor: AppColor.mainColor,
                                    dialHandColor: AppColor.mainColor
                                ),
                              )
                                  , child: child!);
                            }
                        ).then((v){
                          endTime =v;
                        });
                      },

                    ))
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
