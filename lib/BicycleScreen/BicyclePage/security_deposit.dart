import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecurityDeposit extends StatefulWidget {
  const SecurityDeposit({super.key});

  @override
  State<SecurityDeposit> createState() => _SecurityDepositState();
}

class _SecurityDepositState extends State<SecurityDeposit> {
  List<String> text = [
    '1:I thorougly rejjjjjjjjjjjjjad,understood,and signied the Zu Bicycle Terms and Condations in writtenform.',
    '2:I agree for my refundable security to be credited in zu wallet in case of De-registering from Zu Bicycle.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Security Deposit',
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Term & Conditions',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: text.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text[index],
                      style: TextStyle(color: Colors.black, fontSize: 16.sp),
                    ),
                  );
                },
              ),
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
                      'ZU WALLEeeeT',
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
