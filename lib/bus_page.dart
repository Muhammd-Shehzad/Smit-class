import 'package:flutter/material.dart';
import 'package:flutter1/BusPages/BusPage/bus_arrivals.dart';
import 'package:flutter1/BusPages/BusPage/bus_schedule.dart';
import 'package:flutter1/BusPages/BusPage/complaints.dart';
import 'package:flutter1/BusPages/BusPage/service_hour.dart';
import 'package:flutter1/BusPages/BusPage/travel_history.dart';
import 'package:flutter1/BusPages/BusPage/zu_map.dart';
import 'package:flutter1/SplashScreeb/screen1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusPage extends StatefulWidget {
  const BusPage({super.key});

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  List imag = [
    'assets/bus.png',
    'assets/bus.png',
    'assets/map.png',
    'assets/se.png',
    'assets/comp.png',
    'assets/tr.png'
  ];
  List text = [
    'Bus Shchedle',
    'Bus Arrival',
    'ZU Map',
    'Service Hours',
    'Compleints',
    'Travel history'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(115, 211, 209, 209),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BusSchedule();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/bus.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Bus Schedule',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BusArrivals();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/bus.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Bus Arrival',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ZuMap();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/map.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'ZU Map',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceHours(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/se.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Service Hours',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Compleints();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/comp.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Compleints',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TravelHistory();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Image.asset(
                              'assets/tr.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Travel history',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screen1();
                  },
                ),
              );
            },
            child: Container(
              height: 40.h,
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
        ],
      ),
    );

    // return Container(
    //   color: Color.fromARGB(220, 245, 242, 242),
    //   child: Column(
    //     children: [
    //       Expanded(
    //         child: GridView.builder(
    //           itemCount: 6,
    //           gridDelegate:
    //               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    //           itemBuilder: (contex, index) {
    //             return Padding(
    //               padding:
    //                   const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //               child: SizedBox(
    //                 height: 200,
    //                 width: 200,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                       color: Colors.white,
    //                       borderRadius: BorderRadius.circular(10)),
    //                   child: Column(
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.all(10),
    //                         child: Image.asset(
    //                           imag[index],
    //                           height: 40,
    //                           width: 40,
    //                           color: Colors.green,
    //                         ),
    //                       ),
    //                       Text(
    //                         text[index],
    //                         style: TextStyle(
    //                             color: Colors.black,
    //                             fontWeight: FontWeight.bold),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8),
    //         child: GestureDetector(
    //           onTap: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder: (context) {
    //                   return MainScreen();
    //                 },
    //               ),
    //             );
    //           },
    //           child: Container(
    //             height: 60,
    //             width: 300,
    //             decoration: BoxDecoration(
    //               color: Colors.green.shade800,
    //               borderRadius: BorderRadius.circular(30),
    //             ),
    //             child: Center(
    //               child: Text(
    //                 'ZU WALLET',
    //                 style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 25,
    //                     fontWeight: FontWeight.w400),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
