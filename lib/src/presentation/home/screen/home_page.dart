import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Text(
                    "@NgocTienTNT",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.tiktok,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.envelope),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
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
                      child: const Text("FullStack Developer"),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Talk is cheap.",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const Text(
                      "Show me the code",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "I design and code beautifully simple things, and I love that I do.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 600,
                      width: 600,
                      decoration: BoxDecoration(
                        color: AppColors.bgAvt,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    Image.asset(AppImages.imgAvatar, height: 600),
                    iconWidget(
                      right: 50,
                      top: 200,
                      size: 50,
                      padding: 10,
                      icon: AppImages.imgSpring,
                    ),
                    iconWidget(
                      padding: 10,
                      size: 50,
                      left: 70,
                      top: 180,
                      icon: AppImages.imgSpringBoot,
                    ),
                    iconWidget(
                      padding: 10,
                      size: 30,
                      left: 180,
                      top: 50,
                      icon: AppImages.imgJava,
                    ),
                    iconWidget(
                      left: 30,
                      bottom: 50,
                      size: 80,
                      icon: AppImages.imgDart,
                    ),
                    iconWidget(
                      right: 0,
                      bottom: 50,
                      padding: 15,
                      size: 80,
                      icon: AppImages.imgFlutter,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget iconWidget({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? size,
    double padding = 0,
    required String icon,
  }) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
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
        child: Image.asset(icon, height: size, width: size),
      ),
    );
  }
}
