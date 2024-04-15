import 'package:blood_doner/features/page1/presentation/page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void get initState {
    super.initState;
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    gotoNextView();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Column(children: [
            Spacer(),
            Image.asset(
              'assets/images/logo.png',
            ),
            FadeTransition(
              opacity: fadingAnimation!,
              child: Text("وريد",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 43, 24, 24),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lateef",
                      fontStyle: FontStyle.normal,
                      fontSize: 42.0),
                  textAlign: TextAlign.center),
            ),
            Spacer(),
          ]),
        ));
  }

  void gotoNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(page1(), transition: Transition.fade);
    });
  }
}
