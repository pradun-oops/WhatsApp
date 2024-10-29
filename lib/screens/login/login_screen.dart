import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "India";
  List<String> countries = ["India", "America", "Africa", "Italy", "Germany"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Uihelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Uihelper.CustomText(
              text: "WhatsApp will need to verify your phone", height: 16),
          Uihelper.CustomText(
              text: "number. Carrier charges may apply.", height: 16),
          Uihelper.CustomText(
              text: " What’s my number?",
              height: 16,
              color: const Color(0XFF00A884)),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  // ignore: sort_child_properties_last
                  child: Text(country),
                  value: country,
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedcountry = newvalue!;
                });
              },
              value: selectedcountry,
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)))),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Enter Phone Number"),
        backgroundColor: Color(0XFF00A884),
      ));
    } else {}
  }
}
