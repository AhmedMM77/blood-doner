import 'package:flutter/material.dart';

class pageViewItem extends StatelessWidget {
  const pageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(image!),
      // مرحبا بك في تطبيق وريد
      Text(title!,
          style: const TextStyle(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
              fontFamily: "Al-Jazeera-Arabic",
              fontStyle: FontStyle.normal,
              fontSize: 25.0),
          textAlign: TextAlign.center),
      // حيث ينطلق العطاء والأمل لنساهم معًا في إنقاذ الحياة. نحن هنا لجعل التبرع بالدم أمرًا سهلاً وممتعًا،
      Text(subTitle!,
          style: const TextStyle(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w300,
              fontFamily: "Al-Jazeera-Arabic",
              fontStyle: FontStyle.normal,
              fontSize: 18.0),
          textAlign: TextAlign.center)
    ]);
  }
}
