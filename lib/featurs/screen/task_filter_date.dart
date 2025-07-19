

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/featurs/screen/container_date.dart';

class TaskFilterDate extends StatefulWidget {
  const TaskFilterDate({super.key});

  @override
  State<TaskFilterDate> createState() => _TaskFilterDateState();

}

class _TaskFilterDateState extends State<TaskFilterDate> {
  int selectedIndex = 0;
  bool isClecked=true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ContainerDate(isActive: selectedIndex == 0,onTap: (){
            setState(() {
              selectedIndex = 0;
          });}, title: 'oct', date: '30', day: 'Mon ',),
        ),
        SizedBox(width: 6.w,),
        Expanded(
          child: ContainerDate(isActive: selectedIndex == 1,onTap: (){setState(() {
            selectedIndex =1;
          });}, title: 'oct', date: '31', day: 'Tue',),
        ),
        SizedBox(width: 6.w,),
        Expanded(
          child: ContainerDate(isActive: selectedIndex ==2,onTap: (){setState(() {
            selectedIndex =2;
          });}, title: 'nov', date: '1', day: 'Wed',),
        ),
        SizedBox(width: 6.w,),
        Expanded(
          child: ContainerDate(isActive: selectedIndex ==3,onTap: (){setState(() {
           selectedIndex =3;
          });}, title: 'nov',  date: '2',day: 'Thu',),
        ),

      ],
    );
  }
}
