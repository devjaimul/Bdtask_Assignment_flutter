import 'package:bdtask_assignmnet/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        title: const CustomTextStyle(data: 'Bio Data',color: Colors.white,fontSize: 25,),
        centerTitle: true,
       backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextStyle(data: 'Name : Jaimul Islam Akik'),
            CustomTextStyle(data: 'Roll : 550675'),
            CustomTextStyle(data: 'Address : Faridpur, Bangladesh'),
            CustomTextStyle(data: 'College : Faridpur Polytechnic Institute'),
            CustomTextStyle(data: 'Profession : Flutter Developer'),


          ],
        ),
      ),
    );
  }
}


