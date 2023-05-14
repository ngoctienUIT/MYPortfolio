import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constants/constants.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = width < 800 ? 1 : (width > 1200 ? 1 : 0.875);
    double? paddingText = width < 800 ? null : width;

    return Column(
      children: [
        Container(
          width: paddingText != null ? paddingText * 0.4 : paddingText,
          padding: paddingText != null
              ? EdgeInsets.only(left: paddingText * 0.12)
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.bgTextFT,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(-10, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  "FullStack Developer",
                  style: TextStyle(
                    fontSize: 16.sp * fontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Talk is cheap.",
                style:
                    TextStyle(fontSize: 30.sp * fontSize, color: Colors.white),
              ),
              Text(
                "Show me the code",
                style:
                    TextStyle(fontSize: 30.sp * fontSize, color: Colors.white),
              ),
              SizedBox(height: 30.h),
              Text(
                "I design and code beautifully simple things, and I love that I do.",
                style:
                    TextStyle(fontSize: 16.sp * fontSize, color: Colors.grey),
              ),
              SizedBox(height: 50.h),
              InkWell(
                onTap: () {},
                child: Text(
                  "Download CV",
                  style: TextStyle(
                    fontSize: 20.sp * fontSize,
                    color: AppColors.bgTextFT,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.bgTextFT,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 100.h),
        Container(
          width: paddingText != null ? paddingText * 0.4 : paddingText,
          padding: paddingText != null
              ? const EdgeInsets.symmetric(horizontal: 50)
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    "12",
                    style: TextStyle(color: Colors.grey, fontSize: 50.sp),
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    '''YEAR
EXPERIENCE''',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "168",
                    style: TextStyle(color: Colors.grey, fontSize: 50.sp),
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    '''PROJECT COMPLETED 
ON 20 COUNTRIES''',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
