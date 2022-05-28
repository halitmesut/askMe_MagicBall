import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(122, 43, 114, 1.0),
          appBar: AppBar(
            title: const Center(
              child: Text(
                "Ask Me Anything",
                style: TextStyle(
                  fontFamily: "Satisfy",
                ),
              ),
            ),
            backgroundColor: const Color.fromRGBO(43, 7, 74, 1.0),
          ),
          body: const MyBall()),
    );
  }
}

class MyBall extends StatefulWidget {
  const MyBall({Key? key}) : super(key: key);

  @override
  _MyBallState createState() => _MyBallState();
}

class _MyBallState extends State<MyBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset("images/ball$ballNumber.png"),
        onPressed: () {
          setState(
            () {
              ballNumber = Random().nextInt(5) + 1;
            },
          );
        },
      ),
    );
  }
}
