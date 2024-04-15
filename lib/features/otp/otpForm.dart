// ignore_for_file: unused_import, duplicate_import

import 'dart:async';

import 'package:blood_doner/core/bottons.dart';
import 'package:blood_doner/core/constants.dart';
import 'package:blood_doner/features/otp/done.dart';
import 'package:blood_doner/home.dart';
import 'package:flutter/material.dart';
import 'package:blood_doner/home.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  bool invalidOtp = false;
  int resendTime = 60;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();

  @override
  void get initState {
    startTimer();
    super.initState;
  }

  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, '0');
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          myInputBox(context, txt1),
          myInputBox(context, txt2),
          myInputBox(context, txt3),
          myInputBox(context, txt4),
          myInputBox(context, txt5),
        ],
      ),
      const SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          resendTime == 0
              ? InkWell(
                  onTap: () {
                    // Resend OTP Code
                    invalidOtp = false;
                    resendTime = 60;
                    startTimer();
                    //
                  },
                  child: const Text(
                    'اعادة ارسال',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                )
              : const SizedBox()
        ],
      ),
      const SizedBox(height: 10),
      resendTime != 0
          ? Text(
              'ستنتهي صلاحية الكود خلال ${strFormatting(resendTime)} ثانية  ',
              style: const TextStyle(fontSize: 18),
            )
          : const SizedBox(),
      const SizedBox(height: 5),
      Text(
        invalidOtp ? 'Invalid otp!' : '',
        style: const TextStyle(fontSize: 20, color: Colors.red),
      ),
      SizedBox(height: 20), // Added some space before the button
      CustomGeneralButton(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => done()));
          // Handle button tap
        },
        text: 'تأكيد',
      ),
    ]));
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 70,
    width: 60,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 42),
      decoration: const InputDecoration(
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
