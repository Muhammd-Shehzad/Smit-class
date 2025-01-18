import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusArrivals extends StatefulWidget {
  const BusArrivals({super.key});

  @override
  State<BusArrivals> createState() => _BusArrivalsState();
}

class _BusArrivalsState extends State<BusArrivals> {
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
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 60.h,
            width: 370.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search Station Name',
                    style: TextStyle(color: Colors.grey[400], fontSize: 20),
                  ),
                  Icon(Icons.location_searching),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
