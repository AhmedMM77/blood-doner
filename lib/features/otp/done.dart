import 'package:blood_doner/core/bottons.dart';
import 'package:flutter/material.dart';

class done extends StatelessWidget {
  const done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Done.png'),
          Text(
            'تم تفعيل حسابك بنجاح ',
            style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w800,
              fontFamily: "Almarai",
              fontStyle: FontStyle.normal,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            'نحن سعداء بانضمامكم إلى مجتمع وريد ! يمكنك الان المساهمة في إنقاذ الحياة وتحقيق تغيير إيجابي.',
            style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Almarai",
              fontStyle: FontStyle.normal,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20), // Moved the space inside the column
          CustomGeneralButton(
            onTap: () {
              // Handle button tap
            },
            text: 'متابعة',
          ),
        ],
      ),
    );
  }
}
