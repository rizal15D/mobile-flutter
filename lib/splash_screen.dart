import 'package:flutter/material.dart';
import 'package:uts/home_page.dart' ;
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return const HomePage();
        }),
      );
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 45, 46, 1),
      body: Center(
        child: Image.asset(
          "assets/images/logo.jpg",
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}