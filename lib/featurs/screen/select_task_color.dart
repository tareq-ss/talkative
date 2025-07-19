

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTaskColor extends StatelessWidget {

  const SelectTaskColor({super.key});

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
          scrollDirection: Axis.horizontal
          ,itemBuilder: (context,index)=>         CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child:InkWell (onTap: (){

            }
                ,child: Icon(Icons.check,color: Colors.white,)),
          )
              , separatorBuilder: (context,index)=> SizedBox(width: 8.w,), itemCount: 3),
        ),
      ],
    );
  }
}
