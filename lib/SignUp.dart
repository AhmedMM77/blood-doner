// ignore_for_file: unused_field, unused_import

import 'package:blood_doner/Donor%20data/donor_data1.dart';
import 'package:blood_doner/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:blood_doner/core/constants.dart';
import 'package:blood_doner/features/otp/otp.dart';
import 'package:blood_doner/home.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _phoneNumber = '';
  bool _showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'انشاء حساب',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Al-Jazeera-Arabic",
                        fontStyle: FontStyle.normal,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'سجّل الآن وابدأ رحلتك في مساعدة الآخرين',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Al-Jazeera-Arabic",
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 26),
                    Center(
                      // حاوية الشعار والنص الموجود تحته
                      child: Column(
                        children: [
                          Image.asset('assets/images/logo.png'),
                          Text(
                            "وريد",
                            style: TextStyle(
                              color: Color.fromARGB(255, 43, 24, 24),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Lateef",
                              fontStyle: FontStyle.normal,
                              fontSize: 42.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28),
                    Container(
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefix: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  '(+20)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'الرجاء إدخال رقم الهاتف';
                              }
                              if (value.length < 14) {
                                return 'الرجاء إدخال رقم هاتف صالح';
                              }
                              return null;
                            },
                            onSaved: (value) => _phoneNumber = value!,
                          ),
                          SizedBox(height: 22),
                          SizedBox(
                            width: 334,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showImage = true;
                                });
                                Future.delayed(Duration(seconds: 2), () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Otp(),
                                  ));
                                });
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kMainColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Text(
                                  'ارسال رمز التحقيق',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0),
                    Center(
                        child: SizedBox(
                      width: 334,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonationPage()),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(kMainColor),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffFAEAF0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'الدخول كزائر',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(width: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(color: Color(0xff121212)),
                          ),
                        ),
                        Text("لديك حساب؟"),
                      ],
                    ),
                    SizedBox(height: 20), // Added some space after the buttons
                  ],
                ),
              ),
              if (_showImage) // Conditional rendering of the image
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showImage = false;
                    });
                  },
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Center(
                      child: Image.asset(
                        'assets/images/validateMessage.png',
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
