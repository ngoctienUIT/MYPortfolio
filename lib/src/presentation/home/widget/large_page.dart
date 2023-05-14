import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tnt_portfolio/src/presentation/home/widget/introduce_widget.dart';
import 'package:tnt_portfolio/src/presentation/home/widget/major_widget.dart';
import 'package:tnt_portfolio/src/presentation/home/widget/repositories_widget.dart';

import '../../../core/utils/constants/constants.dart';
import 'intro_text_widget.dart';
import 'profile_avatar_widget.dart';
import 'social_widget.dart';
import 'widget.dart';

class LargePage extends StatelessWidget {
  const LargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(1280, 720));
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColors.bgColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      usernameWidget(),
                      const Spacer(),
                      const SocialWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 80.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IntroTextWidget(),
                    ProfileAvatarWidget(),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.bgIcon,
            child: const Row(
              children: [
                MajorWidget(),
                IntroduceWidget(),
              ],
            ),
          ),
          const RepositoriesWidget(),
        ],
      ),
    );
  }
}
