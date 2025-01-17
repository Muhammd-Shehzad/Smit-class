import 'package:flutter/material.dart';
import 'package:flutter1/roll_dice.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(1, 88, 157, 1.0),
              Color.fromRGBO(0, 30, 54, 1.0),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const RollDice(),
      ),
    );
  }
}
