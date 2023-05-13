import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: Padding(
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
            SizedBox(height: 80.h),
            const ProfileAvatarWidget(),
            SizedBox(height: 50.h),
            const IntroTextWidget(),
          ],
        ),
      ),
    );
  }
}
