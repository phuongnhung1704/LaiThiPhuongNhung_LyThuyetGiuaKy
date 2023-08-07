
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'planet_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff1E72BA), Color(0xff2c1f6e)])),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Image.asset(
                  "assets/bg_stars.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/ic_menu.png",
                          width: 20,
                        ),
                        Image.asset(
                          "assets/ic_avatar.png",
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Space\nExplorer",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                                autoPlay: false,
                                aspectRatio: 1.0,
                                enlargeCenterPage: true,
                                viewportFraction: 0.6),
                            items: [
                              PlanetWidget("Mars", "assets/img_mars.png",
                                  "mars description"),
                              PlanetWidget("Earth", "assets/img_earth.png",
                                  "The third planet from the sun and the only astronomical thing that...."),
                              PlanetWidget("Phương Nhung", "assets/ic_nhung.png",
                              "Lại Thị Phương Nhung Lớp 08_ĐH_TTMT MSSV 0850070036"),
                              PlanetWidget("Venus", "assets/img_venus.png",
                                  "venus description"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/ic_avatar_1.png",
                              width: 30,
                            ),
                            Image.asset(
                              "assets/ic_avatar_2.png",
                              width: 30,
                            ),
                            Image.asset(
                              "assets/ic_avatar_3.png",
                              width: 30,
                            ),
                            Image.asset(
                              "assets/ic_avatar_4.png",
                              width: 30,
                            ),
                          ],
                        ),
                        const Text(
                          "John, evelin and 8 friends are online",
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
