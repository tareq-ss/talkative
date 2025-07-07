

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          Image.asset("assets/images/Animation - 1751837012840.gif"),
          Text("Taskati",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),)
        ],
      ),
    );
  }
}
