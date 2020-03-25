import 'package:flutter/material.dart';

import 'package:birthpad/onboarding_pages/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BirthPad",
      home: OnboardingScreen(),
    );
  }
}
