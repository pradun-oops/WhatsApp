import 'package:flutter/material.dart';
import 'package:whatsapp/screens/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A884)),
        useMaterial3: false,
        fontFamily: 'Regular',
      ),
      home: const Splashscreen(),
    );
  }
}
