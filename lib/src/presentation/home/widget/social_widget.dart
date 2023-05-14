import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnt_portfolio/src/core/utils/constants/app_colors.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: width < 800 ? 30.w : 20.w,
          ),
        ),
        if (width > 800) SizedBox(width: 10.w),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
            size: width < 800 ? 30.w : 20.w,
          ),
        ),
        if (width > 800) SizedBox(width: 10.w),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.tiktok,
            color: Colors.black,
            size: width < 800 ? 30.w : 20.w,
          ),
        ),
        if (width > 800) SizedBox(width: 10.w),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
            size: width < 800 ? 30.w : 20.w,
          ),
        ),
        if (width > 800) SizedBox(width: 10.w),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.envelope,
            color: AppColors.bgTextFT,
            size: width < 800 ? 30.w : 20.w,
          ),
        ),
      ],
    );
  }
}
