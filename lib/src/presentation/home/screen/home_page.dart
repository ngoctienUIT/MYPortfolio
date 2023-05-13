import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2e32),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text(
                      "FullStack Developer",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text("FullStack Developer"),
                    Text("FullStack Developer"),
                    Text("FullStack Developer"),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        color: const Color(0xff29282d),
                        borderRadius: BorderRadius.circular(360),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(0.0, 2.5), //(x,y)
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/avatar.png",
                      height: 500,
                    ),
                    Positioned(
                      right: 40,
                      bottom: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff25262a),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(0.0, 2.5), //(x,y)
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/spring.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff25262a),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(0.0, 2.5), //(x,y)
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/spring_boot.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff25262a),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(0.0, 2.5), //(x,y)
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/java.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff25262a),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(0.0, 2.5), //(x,y)
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Image.asset(
                          "assets/images/dart.png",
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff25262a),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(0.0, 2.5), //(x,y)
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/images/flutter.png",
                          height: 80,
                          width: 80,
                        ),
                      ),
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
}
