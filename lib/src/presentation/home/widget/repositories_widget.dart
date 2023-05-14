import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnt_portfolio/src/core/utils/constants/app_colors.dart';
import 'package:tnt_portfolio/src/core/utils/constants/app_strings.dart';

class RepositoriesWidget extends StatelessWidget {
  const RepositoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return width < 800
        ? Container(
            color: AppColors.bgColor,
            width: width,
            child: Column(
              children: [
                SizedBox(height: 50.h),
                textRepositories(width),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemRepositories(data: AppString.listRepositories[0]),
                    ItemRepositories(data: AppString.listRepositories[1]),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemRepositories(data: AppString.listRepositories[2]),
                    ItemRepositories(data: AppString.listRepositories[3]),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemRepositories(data: AppString.listRepositories[4]),
                    ItemRepositories(data: AppString.listRepositories[5]),
                  ],
                ),
                SizedBox(height: 50.h),
              ],
            ),
          )
        : Container(
            color: AppColors.bgColor,
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textRepositories(width),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemRepositories(data: AppString.listRepositories[0]),
                    ItemRepositories(data: AppString.listRepositories[1]),
                    ItemRepositories(data: AppString.listRepositories[2])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemRepositories(data: AppString.listRepositories[3]),
                    ItemRepositories(data: AppString.listRepositories[4]),
                    ItemRepositories(data: AppString.listRepositories[5])
                  ],
                ),
              ],
            ),
          );
  }

  Widget textRepositories(double width) {
    double fontSize = width < 800 ? 1 : (width > 1200 ? 1 : 0.875);

    return Container(
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
        "My Repositories",
        style: TextStyle(
          fontSize: 16.sp * fontSize,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class ItemRepositories extends StatefulWidget {
  const ItemRepositories({Key? key, required this.data}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  State<ItemRepositories> createState() => _ItemRepositoriesState();
}

class _ItemRepositoriesState extends State<ItemRepositories> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: width < 800 ? 200 : 310,
      width: width < 800 ? 200 : 310,
      decoration: BoxDecoration(
        boxShadow: onHover
            ? [
                BoxShadow(
                  color: AppColors.bgIcon.withOpacity(0.5),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                ),
              ]
            : null,
      ),
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Icon(FontAwesomeIcons.github, size: width < 800 ? 150 : 200),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (event) {
              setState(() => onHover = true);
            },
            onExit: (event) {
              setState(() => onHover = false);
            },
            child: Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Card(
                    color: AppColors.bgIcon.withOpacity(0.5),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: width < 800 ? 200 : 310,
                      width: width < 800 ? 200 : 310,
                      decoration: BoxDecoration(
                        color: AppColors.bgIcon.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.folder,
                                color: Colors.white,
                                size: 20.w,
                              ),
                              const Spacer(),
                              Icon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                                size: 20.w,
                              ),
                              SizedBox(width: 15.w),
                              Icon(
                                FontAwesomeIcons.arrowUpRightFromSquare,
                                color: Colors.white,
                                size: 20.w,
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            widget.data["name"] ?? "",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            widget.data["description"] ?? "",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Wrap(
                            children: AppString.listItem.map((e) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 5.h),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppColors.bgTextFT,
                                  ),
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
