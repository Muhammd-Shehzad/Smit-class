import 'package:flutter/material.dart';

class TripPlanner extends StatefulWidget {
  const TripPlanner({super.key});

  @override
  State<TripPlanner> createState() => _TripPlannerState();
}

class _TripPlannerState extends State<TripPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
          'Trip planner',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,);
  }
}
