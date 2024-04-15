import 'package:blood_doner/core/bottons.dart';
import 'package:blood_doner/features/page1/presentation/widgets/PageView1.dart';
import 'package:flutter/material.dart';
import 'package:blood_doner/features/page1/presentation/widgets/dots.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:blood_doner/SignUp.dart';

class page1_body extends StatefulWidget {
  const page1_body({Key? key}) : super(key: key);
  @override
  _page1_bodyState createState() => _page1_bodyState();
}

class _page1_bodyState extends State<page1_body> {
  PageController? pageController;

  @override
  void get initState {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState;
  }

  Widget build(BuildContext context) {
    return Stack(children: [
      PageView1(
        pageController: pageController,
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 100,
        child: CustomIndicator(
          dotIndex: pageController!.hasClients ? pageController?.page : 0,
        ),
      ),
      Positioned(
          bottom: 20,
          left: 100,
          right: 100,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Get.to(() => SignUpPage(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500));
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'تسجيل' : 'متابعة')
                : 'متابعة',
          )),
    ]);
  }
}
