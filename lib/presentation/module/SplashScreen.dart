import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SplashScreen extends StatelessWidget {
final Widget? nextScreen;
  const SplashScreen({Key? key, this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: AnimatedSplashScreen(
    duration: 3000,
    splash: LayoutBuilder(builder: (context, constraints) => Container(
      height: 50.h,
      width: 75.w,
      child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/autumn-welcome-sign-color-maple-leaves-paper-letters-over-vector-illustration-165844802.jpg')),
    )),
    nextScreen: nextScreen!),
    );
  }
}
