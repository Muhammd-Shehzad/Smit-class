import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TravelHistory extends StatefulWidget {
  const TravelHistory({super.key});

  @override
  State<TravelHistory> createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.card_travel,
                          size: 30,
                        ),
                        Text(
                          'From',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.card_travel,
                          size: 30,
                        ),
                        Text(
                          'From',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 3,
            indent: 1,
            endIndent: 1,
            color: Colors.black,
          ),
          Container(
            height: 450.h,
            width: 340.w,
            color: Colors.grey,
            child: Center(
              child: Text(
                'NO Record Found',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
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
                    'ZU WALLET',
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
