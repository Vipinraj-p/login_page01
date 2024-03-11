import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 126, 72, 228)),
            child: Column(
              children: [
                Icon(
                  Icons.home,
                  size: 56,
                  color: const Color.fromARGB(255, 0, 210, 238),
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 210, 238),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.blue],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: 140, left: 20, right: 20, bottom: 20),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 170, left: 20, right: 20, bottom: 20),
            child: Image.asset("Image/welcome.gif"),
          )
        ]),
      ),
    );
  }
}
