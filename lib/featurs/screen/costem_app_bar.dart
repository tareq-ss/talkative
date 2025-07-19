

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/featurs/screen/circle_input_screen.dart';

import '../../core/theme/app_color.dart';

class CostemAppBar extends StatelessWidget {
  const CostemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,Tareq",style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor
            ),),
            Text("Have A Nice Day")
          ],
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CircleInputScreen()));
            
          },
          child: CircleAvatar(
            radius: 30.r,
            backgroundImage: Image.asset("assets/images/509991345_17927064882081165_5864266062745952414_n.jpg").image,
          ),
        )

      ],
    );
  }
}
