import 'package:flutter/material.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/Tutorial/tutorial.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/leader_board.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/member_ship.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/near_by.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/ride_history.dart';
import 'package:flutter1/BicycleScreen/BicyclePage/term_condation.dart';
import 'package:flutter1/SplashScreeb/screen1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BicyclePage extends StatefulWidget {
  const BicyclePage({super.key});

  @override
  State<BicyclePage> createState() => _BicyclePageState();
}

class _BicyclePageState extends State<BicyclePage> {
  List imag = [
    'assets/led.png',
    'assets/ne.png',
    'assets/lit.png',
    'assets/rid.png',
    'assets/me.png',
    'assets/tu.png'
  ];
  List text = [
    'LeaderBoard',
    'NearBy',
    'Term & \nCondations',
    'Ride History',
    'Membership',
    'Tutorial'
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
                          return LeaderBoard();
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
                              'assets/led.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'LeaderBoard',
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
                          return NearBy();
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
                              'assets/ne.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'NearBy',
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
                          return TermCondation();
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
                              'assets/lit.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Term&Condations',
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
                          return RideHistory();
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
                              'assets/rid.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Ride History',
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
                          return MemeberShip();
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
                              'assets/me.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Membership',
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
                          return Tutorial();
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
                              'assets/tu.png',
                              height: 40.h,
                              width: 40.w,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Tutorial',
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
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'QR SCAN',
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
    //                             color: Colors.red,
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
    //               color: Colors.red,
    //               borderRadius: BorderRadius.circular(30),
    //             ),
    //             child: Center(
    //               child: Text(
    //                 'QR SCAN',
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
