import 'package:blood_doner/features/page1/presentation/widgets/pageViewItem.dart';
import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  const PageView1({Key? key, @required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        pageViewItem(
          image: 'assets/images/page1.png',
          title: 'مرحبا بك في تطبيق وريد',
          subTitle:
              'حيث ينطلق العطاء والأمل لنساهم معًا في إنقاذ الحياة. نحن هنا لجعل التبرع بالدم أمرًا سهلاً وممتعًا، ',
        ),
        pageViewItem(
          image: 'assets/images/page2.png',
          title: 'سهولة البحث عن متبرع',
          subTitle:
              'يمكنك بسهولة العثور على المتبرعين المناسبين لتلبية احتياجات المرضى. مع واجهة بسيطة ومرنة ',
        ),
        pageViewItem(
          image: 'assets/images/page3.png',
          title: 'انضم إلى مجتمع وريد',
          subTitle:
              'مع تطبيقنا، يمكنك التعرف على الأحداث القادمة للتبرع بالدم، والانضمام إليها بسهولة.',
        )
      ],
    );
  }
}
