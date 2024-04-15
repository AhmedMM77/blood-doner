// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:blood_doner/core/constants.dart';
import 'package:blood_doner/features/otp/otpForm.dart';
import 'package:blood_doner/SignUp.dart';

class Otp extends StatelessWidget {
  static String routeName = "/otp";

  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 16),
                const Text(
                  "كود التفعيل ",
                  style: headingStyle,
                  textAlign: TextAlign.end,
                ),
                const Text(" تم إرسال رمز التفعيل إلى رقم هاتفك ",
                    textAlign: TextAlign.end),
                SizedBox(width: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "تعديل ",
                        style: TextStyle(color: kMainColor),
                      ),
                    ),
                    Text("*+01*********"),
                  ],
                ),
                Center(
                  child: Image.asset("assets/images/message.png"),
                ),
                const OTPPage(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
