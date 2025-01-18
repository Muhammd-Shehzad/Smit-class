import 'package:flutter/material.dart';

class CodeConduct extends StatefulWidget {
  const CodeConduct({super.key});

  @override
  State<CodeConduct> createState() => _CodeConductState();
}

class _CodeConductState extends State<CodeConduct> {
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
          'Code of Conduct',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
      body: Center(child: Image.asset('assets/t2.jpg')),
    );
  }
}
