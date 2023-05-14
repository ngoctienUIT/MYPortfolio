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

class SmallPage extends StatelessWidget {
  const SmallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(720, 1280));
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColors.bgColor,
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    usernameWidget(),
                    const Spacer(),
                    const SocialWidget(),
                  ],
                ),
                SizedBox(height: 50.h),
                const IntroTextWidget(),
                SizedBox(height: 80.h),
                const Center(child: ProfileAvatarWidget()),
              ],
            ),
          ),
          Container(
            color: AppColors.bgIcon,
            child: Column(
              children: [
                const IntroduceWidget(),
                SizedBox(height: 50.h),
                const MajorWidget(),
                SizedBox(height: 50.h),
              ],
            ),
          ),
          const RepositoriesWidget(),
        ],
      ),
    );
  }
}
