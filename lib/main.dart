import 'package:flutter/material.dart';
import 'onboarding/onboarding_page.dart';

void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //switches to onboarding_page through the onboardingPage class
      home: OnboardingPage(),
      title: 'onboarding screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(
            0,
            16,
            247,
            0,
          ),
        ),
      ),
    );
  }
}
