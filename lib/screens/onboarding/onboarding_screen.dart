import 'package:flutter/material.dart';
import 'package:whatsapp/screens/login/login_screen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/boarding.png'),
            const SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
              text: 'Welcome to WhatsApp',
              height: 20,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'Read out', height: 14),
                Uihelper.CustomText(
                    text: ' Privacy Policy.',
                    height: 14,
                    color: const Color(0xFF0C42CC)),
                Uihelper.CustomText(
                    text: "Tap 'Agree and Continue'", height: 14),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'to accept the ', height: 14),
                Uihelper.CustomText(
                    text: 'terms of services.',
                    height: 14,
                    color: const Color(0xFF0C42CC)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
