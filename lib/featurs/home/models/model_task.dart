import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class ModelTask{
  final Color TaskColors;
  final String title;
  final String startTime;
  final String endTime;
  final String des;
  final String status;


  ModelTask({required this.title,
    required this.startTime,
    required this.endTime,
    required this.des,
    required this.status,required this.TaskColors,});

   static List<ModelTask> tasks=[
  ];

}