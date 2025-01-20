import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/SplashScreeb/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Compleints extends StatefulWidget {
  const Compleints({super.key});

  @override
  State<Compleints> createState() => _CompleintsState();
}

class _CompleintsState extends State<Compleints> {
  String valueChoose = 'Select Category';

  List<String> list1 = [
    'Select Category',
    'Bicycle',
    'Bus Service',
  ];

  List<String> list2 = [
    'Select SubCategory',
    'Mobile',
    'Website',
  ];

  String selectCategory2 = 'Select SubCategory';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Complaints',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                  height: 90.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 40,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          children: [
                            Text(
                              'Make a Phone Call',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Text(
                              '(091) 111 477 477',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.sp),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              thickness: 3,
              indent: 1,
              endIndent: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 320.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: valueChoose,
                      items: list1.map((String items) {
                        return DropdownMenuItem(
                          alignment: AlignmentDirectional.centerStart,
                          value: items,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              ' $items',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(
                          () {
                            valueChoose = value!;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 320.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: selectCategory2,
                      items: list2.map((String items) {
                        return DropdownMenuItem(
                          alignment: AlignmentDirectional.centerStart,
                          value: items,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              ' $items',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(
                          () {
                            selectCategory2 = value!;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 230.h,
              width: 320.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  enabled: false,
                  maxLines: 100,
                  minLines: 30,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    label: Text(
                      'Write Your Complaint Here ...',
                      style: TextStyle(color: Colors.grey, fontSize: 25),
                    ),
                    enabled: false,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 130.h,
              width: 320.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 0.1, spreadRadius: 0.1)
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 60,
                            color: Colors.grey,
                          ),
                          Text(
                            'Upload Image here',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  )
                ],
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
                      'SEND',
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
