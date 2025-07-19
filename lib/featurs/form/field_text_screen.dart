



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldTextScreen extends StatelessWidget {
  final String title;
  final String hint;
  final int desLine;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;
   final void Function()? onTap;
  const FieldTextScreen({super.key, required this.title, required this.hint, this.desLine=1, this.suffixIcon, this.validator, this.onTap, });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color: Colors.black),),
        SizedBox(height: 6.h,),
        TextFormField(
          onTap: onTap,
          readOnly: onTap!=null,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26,width: 3.w),
              borderRadius: BorderRadius.circular(12.r),
            ),hintText: hint,
          ),
          maxLines: desLine,
          validator: validator,
        )

      ],
    );
  }
}
