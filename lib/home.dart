/*import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserInfoPage(
        username: "اسم المستخدم",
        userAddress: "عنوان المستخدم",
      ),
    );
  }
}

class UserInfoPage extends StatelessWidget {
  final String username;
  final String userAddress;

  UserInfoPage({this.username, this.userAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'مرحباً يا $username',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'عنوان المستخدم: $userAddress',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "assets/images/Group 33891.png",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/