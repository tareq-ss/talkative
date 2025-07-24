

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_app/core/theme/app_color.dart';
import 'package:task_app/featurs/form/field_text_screen.dart';

class CircleInputScreen extends StatefulWidget {
  const CircleInputScreen({super.key});

  @override
  State<CircleInputScreen> createState() => _CircleInputScreenState();
}

class _CircleInputScreenState extends State<CircleInputScreen> {
  File? _imageFile;
  final _picker = ImagePicker();

  Future<void> _pickImage() async{
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if(picked != null){
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.sunny,color: AppColor.mainColor,size: 30.sp,),
          )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 150.h,),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: (){
              showModalBottomSheet(context: context, builder: (context)=>Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 25.h),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity,60.h),
                      backgroundColor: AppColor.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)
                      )
                    ),

                    onPressed: (){}, child: Text("Upload from Camera",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500
                    ),)),
                    SizedBox(height: 15.h,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity,60.h),
                            backgroundColor: AppColor.mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)
                            )
                        ),

                        onPressed: (){}, child: Text("Upload from Gallery",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500
                      ),))
                  ],
                ),
              ),));
            },
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  CircleAvatar(radius: 60.r,
                backgroundImage: _imageFile != null
                  ?FileImage(_imageFile!)
                    :AssetImage("assets/images/509991345_17927064882081165_5864266062745952414_n.jpg")
                  as ImageProvider),
                  Icon(Icons.camera_alt,color: AppColor.mainColor,size: 25.sp,)
              ]),
            ),
            Divider(
              thickness: 2.sp,
              height: 100.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Text("tareq Queder",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                    color: AppColor.mainColor
                  ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                ),
               InkWell(
                   splashColor: Colors.transparent,
                   highlightColor: Colors.transparent,
                   onTap: (){
               },
                   child: Container(
                     padding: EdgeInsets.all(2),
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(width: 2.w,color: AppColor.mainColor),
                     ),
                     child: Icon(Icons.edit,color: AppColor.mainColor,size: 30.sp,),
                   ))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
