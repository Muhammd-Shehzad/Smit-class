import 'package:flutter/material.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZuMap extends StatefulWidget {
  const ZuMap({super.key});

  @override
  State<ZuMap> createState() => _ZuMapState();
}

class _ZuMapState extends State<ZuMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zu Map',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                child: InteractiveViewer(
                  maxScale: 4,
                  minScale: 1,
                  clipBehavior: Clip.none,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/nemap.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 180.h,
              width: 300.w,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
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
      ),
    );
  }
}
