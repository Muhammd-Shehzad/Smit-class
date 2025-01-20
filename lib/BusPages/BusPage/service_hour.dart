
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceHours extends StatefulWidget {
  const ServiceHours({super.key});

  @override
  State<ServiceHours> createState() => _ServiceHoursState();
}

class _ServiceHoursState extends State<ServiceHours>
    with TickerProviderStateMixin {
  List<String> assetsImages = [
    'assets/friday.jpg',
    'assets/m-t.jpg',
    'assets/satarday.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Service Hours',
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
        children: [
          SizedBox(
            height: 600,
            width: 450,
            child: PageView.builder(
                itemCount: assetsImages.length,
                pageSnapping: false, //smoothly slide
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      assetsImages[index],
                    ),
                  );
                }),
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
