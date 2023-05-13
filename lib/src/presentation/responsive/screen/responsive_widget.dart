import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largePage;
  final Widget? mediumPage;
  final Widget? smallPage;

  const ResponsiveWidget({
    Key? key,
    required this.largePage,
    this.mediumPage,
    this.smallPage,
  }) : super(key: key);

  static bool isSmallPage(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargePage(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumPage(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largePage;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumPage ?? largePage;
        } else {
          return smallPage ?? largePage;
        }
      },
    );
  }
}
