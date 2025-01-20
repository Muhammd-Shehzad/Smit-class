import 'package:flutter/material.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/security_deposit.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/view_packges.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemeberShip extends StatefulWidget {
  const MemeberShip({super.key});

  @override
  State<MemeberShip> createState() => _MemeberShipState();
}

class _MemeberShipState extends State<MemeberShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Travel History',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return ViewPackages();
                    }),
                  ),
                );
              },
              child: Container(
                height: 300.h,
                width: 380.w,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/me.png',
                      height: 100.h,
                      width: 200.w,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'View Packages',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 3,
              indent: 1,
              endIndent: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return SecurityDeposit();
                    }),
                  ),
                );
              },
              child: Container(
                height: 300.h,
                width: 380.w,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/c.png',
                      height: 60.h,
                      width: 200.w,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Security Deposit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
