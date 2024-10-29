import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/onboarding/onboarding_screen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            const SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
                text: 'WhatsApp', height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
