import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 3D Text
            Text(
              'Welcome to My App',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                fontSize: 40,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(4.0, 4.0),
                    blurRadius: 4.0,
                    color: Colors.black45,
                  ),
                  Shadow(
                    offset: Offset(-2.0, -2.0),
                    blurRadius: 2.0,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            /// Image with loading animation around
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 170,
                  height: 170,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    color: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(70), // Rounded corners
                  child: Image.asset(
                    'assets/images.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
