import 'package:flutter/material.dart';
import 'package:togopart/HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Material(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("Assets/splash_logo@1x.png"),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "www.togoparts.com",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Singapore's Most Addictive Bicycle Marketplace",
                  style: TextStyle(
                    fontFamily: "poppins",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
