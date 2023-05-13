import 'package:flutter/material.dart';
import 'package:tnt_portfolio/src/presentation/home/widget/large_page.dart';
import 'package:tnt_portfolio/src/presentation/home/widget/small_page.dart';
import 'package:tnt_portfolio/src/presentation/responsive/screen/responsive_widget.dart';

import '../../../core/utils/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ResponsiveWidget(
        largePage: LargePage(),
        smallPage: SmallPage(),
      ),
    );
  }
}
