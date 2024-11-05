import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  String phonenumber;

  OtpScreen({super.key, required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Uihelper.CustomText(
              text: 'Verifying your phone number.',
              height: 20,
              fontweight: FontWeight.bold,
              color: const Color(
                0xFF00A884,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Uihelper.CustomText(
              text: "You've tried to register +91${phonenumber}",
              height: 15,
            ),
            Uihelper.CustomText(
                text: "recently. Wait before request an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(
                  text: 'with your code.',
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Uihelper.CustomText(
                      text: 'Wrong number',
                      height: 15,
                      color: const Color(
                        0xFF00A884,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp1Controller),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Uihelper.CustomText(
                  text: "Didn't receive code?",
                  height: 15,
                  color: const Color(0xFF00A884),
                ))
          ],
        ),
      ),
      floatingActionButton:
          Uihelper.CustomButton(callback: () {}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
