

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remicarefinal/UI/set_timer.dart';
import 'package:remicarefinal/UI/success_screen.dart';
import 'package:remicarefinal/utility/colors.dart';
import 'package:remicarefinal/utility/text_styles.dart';

class AddReminder extends StatefulWidget {
  const AddReminder({Key? key}) : super(key: key);

  @override
  _AddReminderState createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REMICARE", style: mainHeading,),
        centerTitle: true,

        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
              color: const Color(0xFF008080),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Keep  Calm  &  Take Your Medicines On Time !",
                    style: TextStyle(color: Colors.black, fontSize: 18, ),
                  ),
                  SizedBox(height: 25,),
                   ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text("Select Medicine Type", style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 25,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: GestureDetector(
                      child: Image.asset("assets/pngs/pills.png", height: 65,),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      child: Image.asset("assets/pngs/syrup.png", height: 65,),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      child: Image.asset("assets/pngs/syringe.png", height: 65,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Text("Medicine Name"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Text("Dosage (mg/ml)"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: backGroundColor,
              ),
              width: 100,
              child: TextButton(child: Text("Next", style: const TextStyle(color: Colors.white),), onPressed: (){
                Get.to(SetTime(), transition: Transition.leftToRightWithFade);

              },),
            ),
          ],
        ),
      ),
    );
  }
}
