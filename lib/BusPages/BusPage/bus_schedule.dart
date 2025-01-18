import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter1/screen4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BusSchedule extends StatefulWidget {
  const BusSchedule({super.key});

  @override
  State<BusSchedule> createState() => _BusScheduleState();
}

class _BusScheduleState extends State<BusSchedule> {
  //create datetime variable
  DateTime _dateTime = DateTime.now();

  //show date picker method
  void _showDataPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then(
      (value) => setState(
        () {
          _dateTime = value!;
        },
      ),
    );
  }

  String hitText = 'Search Station Name';

  List<String> satationName = [
    'chamkani',
    'Sardar Garhi',
    'Chughal Pura',
    'Faisal Colony',
    'Old Haji Camp',
    'Lahore Adda',
    'GulBahar Chowk',
    'Hahtnagri',
    'Malik Saad Shaheed',
    'Khyber Bazar',
    'Shoba Bazar',
    'Dabgari Gardens',
    'Railway Station',
    'FC Chowk',
    'Saddar Bazar',
    'Mall Road',
    'Tehkal Payyan',
    'Tehkal Bala',
    'Abdara Road',
    'University Town',
    'University of Peshahwar',
    'Islamia Collage',
    'Board Bazar',
    'Mall of Hayatabad'
  ];

  String selectStationName = 'chamkani';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            'Bus Schedule',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40.h,
                width: 400.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        _dateTime.toString(),
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          _showDataPicker();
                        },
                        child: Text(
                          'Change Date',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 40.h,
                width: 400.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonFormField(
                    value: selectStationName,
                    items: satationName.map((String items) {
                      return DropdownMenuItem(
                        alignment: AlignmentDirectional.centerStart,
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectStationName = value!;
                      });
                    }),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
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
      ),
    );
  }
}
