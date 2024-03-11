import 'package:flutter/material.dart';
import 'package:login_page01/WelcomePg.dart';
import 'package:login_page01/Wrong.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({super.key});

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phnoController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "Image/person-icon-gif.jpg",
              height: 28,
            ),
            Text("Login Page"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(children: [
              Container(
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "First Name",
                      hintText: "Type your FIrst Name here"),
                  //=====================================controller: ,
                  controller: firstNameController,
                  // onChanged: (value) {
                  //   print("The value entered is : $value");
                  // },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "Last Name",
                      hintText: "Type your Last Name here"),
                  controller: lastNameController,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "Phone No",
                      hintText: "+91..."),
                  controller: phnoController,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "E-Mail ID",
                      hintText: "example@gmail.com"),
                  controller: emailController,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "Age",
                      hintText: "Age here..."),
                  controller: ageController,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("ElevatedButt :${firstNameController.text}");
                      String firstName = firstNameController.text;
                      String lastName = lastNameController.text;
                      String phNo = phnoController.text;
                      String Email = emailController.text;
                      String age = ageController.text;
                      if (firstName == "vipin" &&
                          lastName == "raj" &&
                          phNo == "1234567890" &&
                          Email == "abc@123" &&
                          age == "24") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Welcome(),
                            ));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WrongData(),
                            ));
                      }
                    },
                    child: Text("Sign in",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromARGB(255, 12, 12, 165),
                        fixedSize: Size(180, 50)),
                  ),
                  SizedBox(width: 23),
                  ElevatedButton(
                    onPressed: () {
                      firstNameController.clear();
                      lastNameController.clear();
                      phnoController.clear();
                      emailController.clear();
                      ageController.clear();
                    },
                    child: Text(
                      "Clear",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(195, 76, 78, 175),
                        foregroundColor: Colors.white,
                        fixedSize: Size(180, 50)),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
