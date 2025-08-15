import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 250, // total width of the container
              height: 250, // total height of the container
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4.0, // border width
                  // color: Colors.blue, // optionally add border color here
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/snake.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10), // space between image and text
            Text(
              "welcome to toodoos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
