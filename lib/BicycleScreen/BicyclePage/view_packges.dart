import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPackages extends StatefulWidget {
  const ViewPackages({super.key});

  @override
  State<ViewPackages> createState() => _ViewPackagesState();
}

class _ViewPackagesState extends State<ViewPackages> {
  List<String> text1 = ['Single Day Pass', 'Bi-Weekly Pass', 'Montly Pass'];
  List<String> text2 = ['Rs.15', 'Rs.100', 'Rs.200'];
  List<String> text3 = [
    'Valid for 1 Days',
    'Valid for 14 Days',
    'Valid for 30 Days',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'MemberShip',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
      body: Expanded(
        child: GridView.builder(
            itemCount: 3,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 140.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 40.r,
                          backgroundColor: Colors.grey,
                          child: Image.asset(
                            'assets/bicycle.png',
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Text(
                        text1[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'MemberShip',
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        text2[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            text3[index],
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
