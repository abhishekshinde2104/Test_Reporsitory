import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remicarefinal/UI/add_reminder.dart';
import 'package:remicarefinal/utility/colors.dart';
import 'package:remicarefinal/utility/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REMICARE", style: mainHeading,),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
      ),
      body: Column(

          children: [
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
              color: const Color(0xFF008080),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                  const Text("Your Personal Medicine Intake Tracker & Healthcare Assistant",
                    style: TextStyle(color: Colors.black, fontSize: 20, ),
                  ),
                   Container(child: Image.asset("assets/pngs/heart1.png", height: 65,),)
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backGroundColor,

                    ),
                    width: 150,
                    child: TextButton(child: Text("Add Reminder", style: const TextStyle(color: Colors.white),), onPressed: (){
                      Get.to(AddReminder(), transition: Transition.leftToRightWithFade);
                    },),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backGroundColor),
                    width: 150,
                    child: TextButton(child: const Text("Reminder History", style: TextStyle(color: Colors.white)), onPressed: (){},
                    ),
                  )
                ],
              ),
            )
          ],
      ),
    );
  }
}
