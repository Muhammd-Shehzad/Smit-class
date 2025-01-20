import 'package:flutter/material.dart';
import 'package:flutter1/TicketsPage/code_conduct.dart';
import 'package:flutter1/TicketsPage/fare.dart';
import 'package:flutter1/TicketsPage/recharge.dart';
import 'package:flutter1/TicketsPage/recharge_history.dart';
import 'package:flutter1/TicketsPage/trip_planner.dart';
import 'package:flutter1/TicketsPage/zu_car_services.dart';
import 'package:flutter1/SplashScreeb/screen1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  List imag = [
    'assets/p.png',
    'assets/c.png',
    'assets/card.png',
    'assets/atm.png',
    'assets/fare.png',
    'assets/code.png'
  ];
  List text = [
    'Trip Planner',
    'Recharge',
    'Recharge\nHistory',
    'Zu Card \nServices',
    'Fare',
    'Code of Condct'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(115, 211, 209, 209),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TripPlanner();
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
                              'assets/p.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Trip Planner',
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
                          return Recharge();
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
                              'assets/c.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Recharge',
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
                          return RechargeHistory();
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
                              'assets/card.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Recharge History',
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
                        builder: (context) {
                          return ZuCardServices();
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
                              'assets/atm.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Zu Card Services',
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
                          return Fare();
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
                              'assets/fare.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Fare',
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
                          return CodeConduct();
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
                              'assets/code.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Code of Condct',
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
    //         child: Container(
    //           color: Color.fromARGB(220, 245, 242, 242),
    //           child: GridView.builder(
    //             itemCount: 6,
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                 crossAxisCount: 3),
    //             itemBuilder: (contex, index) {
    //               return Padding(
    //                 padding: const EdgeInsets.symmetric(
    //                     horizontal: 10, vertical: 10),
    //                 child: SizedBox(
    //                   height: 200,
    //                   width: 200,
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.circular(10)),
    //                     child: Column(
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.all(10),
    //                           child: Image.asset(
    //                             imag[index],
    //                             height: 40,
    //                             width: 40,
    //                             color: Colors.green,
    //                           ),
    //                         ),
    //                         Text(
    //                           text[index],
    //                           style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
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
