import 'package:flutter/material.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RechargeHistory extends StatefulWidget {
  const RechargeHistory({super.key});

  @override
  State<RechargeHistory> createState() => _RechargeHistoryState();
}

class _RechargeHistoryState extends State<RechargeHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recharge History',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 500.h,
              width: 300.w,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Text(
                  'No History Found',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen4();
                    },
                  ),
                );
              },
              child: Container(
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Generate PDF',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
