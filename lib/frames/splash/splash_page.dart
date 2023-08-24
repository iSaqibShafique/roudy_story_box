import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roudy_story_box/frames/onboarding/onboarding1.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => OnBoarding1(),
        ),
      );
    });
    return Scaffold(
      // designSize: Size(360,800),
      body: Image.asset("assets/images/Splash.png"),
    );
  }
}
