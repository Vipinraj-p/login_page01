import 'package:flutter/material.dart';

class WrongData extends StatefulWidget {
  const WrongData({super.key});

  @override
  State<WrongData> createState() => _WrongDataState();
}

class _WrongDataState extends State<WrongData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 40),
        child: Text(
          "Wrong Input..!   Try Again..",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
