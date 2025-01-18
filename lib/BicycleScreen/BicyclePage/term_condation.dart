import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermCondation extends StatefulWidget {
  const TermCondation({super.key});

  @override
  State<TermCondation> createState() => _TermCondationState();
}

class _TermCondationState extends State<TermCondation> {
  List<String> termImages = [
    'assets/satarday.jpg',
    'assets/m-t.jpg',
    'assets/friday.jpg'
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
          'Bicycle Registration',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 550.h,
              width: 400.w,
              decoration: BoxDecoration(color: Colors.white),
              child: PageView.builder(
                itemCount: termImages.length,
                itemBuilder: ((context, index) {
                  return Image.asset(
                    termImages[index],
                    height: 100.h,
                    width: 150.w,
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
