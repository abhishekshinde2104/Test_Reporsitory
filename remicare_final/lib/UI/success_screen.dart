import 'package:flutter/material.dart';
import 'package:remicarefinal/utility/colors.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Reminder  Added  Successfully",
            style: TextStyle(color: Colors.white,
            fontSize: 23,
            ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Image.asset("assets/pngs/success.png", height: 200,),
          )
        ],
      ),
    );
  }
}
