import 'dart:async';
import 'package:bdtask_assignmnet/Widgets/bottom_navigation_bar.dart';
import 'package:bdtask_assignmnet/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const CustomNavBar()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.fastfood_outlined,
            color: AppColors.whiteColors,
            size: 100,
          ),
          const SizedBox(
            height: 10,
          ),
           HeadingTwo(
            data: 'Foodie',
            color:AppColors.whiteColors ,
            fontSize: 35,
          )
        ],
      ),
    ));
  }
}
