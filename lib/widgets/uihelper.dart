import 'package:flutter/material.dart';

class Uihelper {
  // ignore: non_constant_identifier_names
  static CustomButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 50,
      width: 370,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(
            buttonname,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          )),
    );
  }

  // ignore: non_constant_identifier_names
  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? const Color(0xFF5E5E5E),
          fontWeight: fontweight),
    );
  }
}
