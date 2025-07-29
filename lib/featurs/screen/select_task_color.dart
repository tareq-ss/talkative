

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theme/app_color.dart';

class SelectTaskColor extends StatefulWidget {
final Function(Color) onChange;
final Function() isActive;
  const SelectTaskColor({super.key, required this.onChange, required this.isActive});
  @override
  State<SelectTaskColor> createState() => _SelectTaskColorState();
}

class _SelectTaskColorState extends State<SelectTaskColor> {
  List<Color> colors=[
    AppColor.orangeColors,
    AppColor.mainColor,
    AppColor.pinkColor
  ];
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color",
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        SizedBox(height: 8.h,),
        SizedBox(height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                  widget.onChange(colors[index]);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: colors[index],
                    ),
                    if (index == activeIndex)
                      Icon(Icons.check, color: Colors.white, size: 20),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
