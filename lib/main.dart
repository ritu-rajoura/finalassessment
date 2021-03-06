[3:33 AM, 7/2/2022] +91 84330 63257: // ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phone_call_app/assessment/user_login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStarted(),
  ));
}

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Text(
              "TRAINING",
              style: TextStyle(color: Colors.purple, fontSize: 40),
            )),
            Container(
              width: 250,
              height: 400,
              child: Image(
                  image: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20191120/original/pngtree-vector-illustration-man-training-presentation-flat-cartoon-style-png-image_5047445.jpg")),
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return UserLogin();
                  }));
                },
                child: Center(child: Text("Get Started")),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
[3:33 AM, 7/2/2022] +91 84330 63257: // ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TrainingCompletion extends StatelessWidget {
  String? Name;
  DateTime todayDate = DateTime.now();
  TrainingCompletion({Key? key, this.Name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Status Bar",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Hi, ${Name}",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/e5/73/7c/e5737c44dd061635766ba1e3a4b4efb9.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You have successfully completed Hybrid Mobile App Development Course.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Pankaj Kapoor",
                style: TextStyle(color: Colors.black54, fontSize: 20)),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    "Date:${todayDate.day}-${todayDate.month}-${todayDate.year}",
                    style: TextStyle(fontSize: 20))
              ],
            )
          ],
        ),
      )),
    );
  }
}