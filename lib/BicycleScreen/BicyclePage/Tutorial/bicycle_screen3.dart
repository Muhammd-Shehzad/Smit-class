import 'package:flutter/material.dart';
import 'package:flutter1/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BicycleScreen3 extends StatefulWidget {
  const BicycleScreen3({super.key});

  @override
  State<BicycleScreen3> createState() => _BicycleScreen3State();
}

class _BicycleScreen3State extends State<BicycleScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'How to Return Bicycle',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
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
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 500.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Bicycle Returned',
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset('assets/bii.png'),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Text(
                          ' After Scaning QR, un dock the bicycle and enjoy your ride',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
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
                  'Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.sp,
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
