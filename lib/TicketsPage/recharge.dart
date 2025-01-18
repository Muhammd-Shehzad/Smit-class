import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Center(
            child: Text(
          'Top Up',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Choose top up option',
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100.h,
                        width: 300.w,
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/jazzcash.png',
                              height: 90.h,
                              width: 90.w,
                            ),
                            SizedBox(width: 10.w),
                            Text('')
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
