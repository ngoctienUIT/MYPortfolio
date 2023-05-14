import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/constants/constants.dart';

class MajorWidget extends StatelessWidget {
  const MajorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: width < 800 ? null : height,
      width: width < 800 ? null : width / 2,
      padding: width < 800 ? EdgeInsets.symmetric(horizontal: 30.w) : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ItemMajor(
            title: "Mobile",
            content:
                "Create products with Dart programming language and Flutter framework",
            number: 20,
            icon: FontAwesomeIcons.mobileScreen,
          ),
          SizedBox(height: width < 800 ? 20.h : 3.h),
          const ItemMajor(
            title: "Back End",
            content:
                "Create API for Front End using Java programming language and Spring Boot Framework",
            number: 12,
            icon: FontAwesomeIcons.code,
          ),
          SizedBox(height: width < 800 ? 20.h : 3.h),
          const ItemMajor(
            title: "Github",
            content: "Github is where I store my source code",
            number: 32,
            icon: FontAwesomeIcons.github,
          ),
        ],
      ),
    );
  }
}

class ItemMajor extends StatefulWidget {
  const ItemMajor({
    Key? key,
    required this.title,
    required this.content,
    required this.number,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String content;
  final int number;
  final IconData icon;

  @override
  State<ItemMajor> createState() => _ItemMajorState();
}

class _ItemMajorState extends State<ItemMajor> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() => onHover = true);
      },
      onExit: (event) {
        setState(() => onHover = false);
      },
      child: SizedBox(
        width: width < 800 ? null : width * 0.3,
        child: Card(
          elevation: onHover ? 10 : 0,
          color: AppColors.bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 50.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: width < 800 ? 30.h : 15.h),
                    Text(
                      widget.title,
                      style:
                          TextStyle(fontSize: 30.sp, color: AppColors.bgTextFT),
                    ),
                    Text(
                      widget.content,
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "${widget.number} PRODUCT",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: onHover
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: width < 800 ? 30.h : 15.h),
                  ],
                ),
              ),
              Container(
                constraints:
                    BoxConstraints(minWidth: width < 800 ? 0 : width * 0.06),
                padding: width < 800 ? EdgeInsets.only(right: 50.w) : null,
                child: Icon(widget.icon, color: AppColors.bgTextFT),
              )
            ],
          ),
        ),
      ),
    );
  }
}
