import 'package:abc/bottomcontroller.dart';
import 'package:abc/home.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  final controller = Get.put(BottomBarController());
  BottomNavigation({super.key});
  var iconList = [
    Icons.wb_sunny,
    Icons.wb_cloudy,
    Icons.wb_twighlight,
    Icons.terrain,
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Center(
      child: Obx(() => Scaffold(
            appBar: AppBar(
              leading: InkWell(
                onTap: () {
                  Get.offAll(Home());
                },
                child: Icon(
                  Icons.arrow_back,
                  size: height * 0.035,
                ),
              ),
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: const Text(
                'Bottom Navigation Bar',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Center(
                child: Text(controller.getIndex() == -1
                    ? 'Home'
                    : controller.getIndex() == 0
                        ? 'Sunny'
                        : controller.getIndex() == 1
                            ? 'Cloudy'
                            : controller.getIndex() == 2
                                ? 'Twigh light'
                                : 'Terrain')),
            floatingActionButton: FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: Colors.yellow,
                onPressed: () => controller.setIndex(-1),
                child: const Icon(
                  Icons.nightlight_round,
                  color: Colors.black,
                )),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar(
              backgroundColor: Colors.black,
              inactiveColor: Colors.yellow,
              activeColor: Colors.white,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              icons: iconList,
              activeIndex: controller.getIndex(),
              onTap: (index) => controller.setIndex(index),
            ),
          )),
    );
  }
}
