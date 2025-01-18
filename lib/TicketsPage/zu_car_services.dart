import 'package:flutter/material.dart';

class ZuCardServices extends StatefulWidget {
  const ZuCardServices({super.key});

  @override
  State<ZuCardServices> createState() => _ZuCardServicesState();
}

class _ZuCardServicesState extends State<ZuCardServices> {
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
          'Zu Car Services',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
