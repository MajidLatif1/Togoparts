import 'package:flutter/material.dart';
// import 'SplashScreen.dart';
import 'HomePage.dart';

void main() {
  runApp(Togopart());
}

class Togopart extends StatelessWidget {
  const Togopart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
