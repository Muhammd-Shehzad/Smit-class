import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter1/bicycle_page.dart';
import 'package:flutter1/bus_page.dart';
import 'package:flutter1/tickets_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  late final PageController pageController;

  List<String> aseetsImage1 = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];

  int pageNo = 0;

  late final Timer carasouelTimer; //chang here

  Timer gettimer() {
    return Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        if (pageNo == 4) {
          pageNo == 0;
        }
        pageController.animateToPage(
          pageNo,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOutCirc,
        );
        pageNo++;
      },
    );
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.90);
    carasouelTimer = gettimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 44.h,
                width: 360.w,
                decoration: BoxDecoration(color: Colors.grey),
                child: Column(
                  children: [
                    Text(
                      "Welcome : Muhammad Shehzad",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Rs: 100",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 290.h,
                width: 330.w,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageController,
                      pageSnapping: false, // smootly slide
                      onPageChanged: (index) {
                        pageNo = index;
                        setState(() {});
                      },
                      itemBuilder: (_, index) {
                        return AnimatedBuilder(
                          animation: pageController,
                          builder: (ctx, child) {
                            return child!;
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  aseetsImage1[index], // height: 240.h,
                                  // width: 440.w,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: aseetsImage1.length,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Container(
                            child: Icon(
                              Icons.circle,
                              size: 16.0,
                              color:
                                  pageNo == index ? Colors.grey : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50.h,
                width: 400.w,
                decoration: BoxDecoration(color: Colors.white),
                child: TabBar(
                  indicatorColor: Colors.green,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: 'Bus',
                    ),
                    Tab(
                      text: 'Bicycle',
                    ),
                    Tab(
                      text: 'Tickets',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [BusPage(), BicyclePage(), TicketsPage()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
