import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroduceWidget extends StatelessWidget {
  const IntroduceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width < 800 ? null : width * 0.3,
      height: width < 800 ? null : height,
      padding: width < 800 ? EdgeInsets.symmetric(horizontal: 30.w) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          Text(
            "Introduce",
            style: TextStyle(color: Colors.grey, fontSize: 16.sp),
          ),
          SizedBox(height: 25.h),
          Text(
            "Hello! I'm NgocTienTNT",
            style: TextStyle(color: Colors.white, fontSize: 30.sp),
          ),
          SizedBox(height: 25.h),
          Text(
            "Every great design begin with an even better story",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Slncc beg Inning my Joorncy as freelance dcslqncr nearly years work {or ageneres. consulted for startups. and collaborated talented people to create products for both eotiuter quxezly confident. naturally cur Ious. and perøctually 00 ny dOiqO",
            style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
