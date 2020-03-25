import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:flutter/material.dart';

import 'package:birthpad/onboarding_pages/page_one.dart';
import 'package:birthpad/onboarding_pages/page_two.dart';
import 'package:birthpad/onboarding_pages/page_three.dart';
import 'package:birthpad/authentication/fingerprint_authentication.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  UpdateType updateType;

  final pages = [
    Container(child: PageOne()),
    Container(
      child: PageTwo(),
    ),
    Container(
      child: PageThree(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/fingerprint': (BuildContext context) => new FingerprintAuth()
      },
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          fullTransitionValue: 500,
          enableSlideIcon: true,
          enableLoop: false,
          positionSlideIcon: 0.744,
          waveType: WaveType.liquidReveal,
          slideIconWidget: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Color(0xff546E7A),
          ),
          initialPage: 0,
        ),
      ),
    );
  }
}
