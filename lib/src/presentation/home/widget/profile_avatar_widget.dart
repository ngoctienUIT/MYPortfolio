import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tnt_portfolio/src/core/function/function.dart';

import '../../../core/utils/constants/constants.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double avtSize = width < 800 ? 450 : (width > 1200 ? 600 : 450);
    avtSize = checkSizeScreen(context) ? avtSize.h : avtSize.w;
    double iconSize = width < 800 ? 0.75 : (width > 1200 ? 1 : 1);
    return Stack(
      children: [
        Container(
          height: avtSize,
          width: avtSize,
          decoration: BoxDecoration(
            color: AppColors.bgAvt,
            borderRadius: BorderRadius.circular(360),
          ),
        ),
        Image.asset(AppImages.imgAvatar, height: avtSize),
        iconWidget(
          right: 50,
          top: 200,
          size: 50,
          padding: 10,
          iconSize: iconSize,
          icon: AppImages.imgSpring,
        ),
        iconWidget(
          padding: 10,
          size: 50,
          left: 70,
          top: 180,
          iconSize: iconSize,
          icon: AppImages.imgSpringBoot,
        ),
        iconWidget(
          padding: 10,
          size: 30,
          left: 180,
          top: 50,
          iconSize: iconSize,
          icon: AppImages.imgJava,
        ),
        iconWidget(
          left: 30,
          bottom: 50,
          size: 80,
          iconSize: iconSize,
          icon: AppImages.imgDart,
        ),
        iconWidget(
          right: 0,
          bottom: 50,
          padding: 15,
          size: 80,
          iconSize: iconSize,
          icon: AppImages.imgFlutter,
        ),
      ],
    );
  }

  Widget iconWidget({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? size,
    double padding = 0,
    required double iconSize,
    required String icon,
  }) {
    return Positioned(
      left: left != null ? left.h * iconSize : left,
      right: right != null ? right.h * iconSize : right,
      top: top != null ? top.h * iconSize : top,
      bottom: bottom != null ? bottom.h * iconSize : bottom,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bgIcon,
          borderRadius: BorderRadius.circular(360),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(-10, 10),
              blurRadius: 10,
            ),
          ],
        ),
        padding: EdgeInsets.all(padding),
        child: Image.asset(icon,
            height: size!.h * iconSize, width: size.h * iconSize),
      ),
    );
  }
}
