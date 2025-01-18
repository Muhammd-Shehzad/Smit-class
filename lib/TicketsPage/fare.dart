import 'package:flutter/material.dart';

class Fare extends StatefulWidget {
  const Fare({super.key});

  @override
  State<Fare> createState() => _FareState();
}

class _FareState extends State<Fare> {
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
          'Fare',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
      body: Center(child: Image.asset('assets/t1.jpg')),
    );
  }
}
