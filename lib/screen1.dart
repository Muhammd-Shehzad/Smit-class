import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screen2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/zulogo.png',
              height: 200.h,
              width: 200.w,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Enter your Number',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.phone),
                prefixIconColor: Colors.green[800],
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.green[800],
                ),
                text: 'Disclaimer:',
                children: [
                  TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      text:
                          'If you are existing user,kindly use the phone number you registered to use Zu mobile Features'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen2()));
            },
            child: Container(
              height: 50.h,
              width: 350.w,
              decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'PROCEED',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
