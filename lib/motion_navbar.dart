import 'package:abc/motioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

// optional, only if using provided badge style

// optional, only if using "MotionTabBarController" to programmatically change the tab

import 'Favorites.dart';

class BottomClass extends StatelessWidget {
  BottomClass({Key? key}) : super(key: key);
  final BottomController controller = Get.put(BottomController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff78B0A3),
        title: Text('Pick Your Own',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      bottomNavigationBar: MotionTabBar(
        tabIconColor: Color(0xff78B0A3),
        tabIconSelectedColor: Colors.white,
        tabSelectedColor: Color(0XFF78B0A3),
        onTabItemSelected: (index) {
          controller.changeTab(index);
        },
        controller: controller.motionTabBarController,
        initialSelectedTab: "Home",
        labels: const ["Dashboard", "Home", "Profile", "Settings"],
        icons: const [
          Icons.dashboard,
          Icons.home,
          Icons.people_alt,
          Icons.settings
        ],
        //... other properties remain the same
      ),
      body: Obx(() {
        final currentIndex =
            controller.currentIndex.value; // Get current index value
        return TabBarView(
          controller: controller.motionTabBarController,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06, vertical: height * 0.04),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.7,
                      width: width,
                      child: InkWell(
                        onTap: () {
                          Get.to(const Favorites());
                        },
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: 0.7,
                            ),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.10),
                                          blurRadius: 5,
                                          blurStyle: BlurStyle.outer,
                                          offset: Offset(0.2, 0.3))
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.04,
                                      vertical: height * 0.025),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: width,
                                        height: height * 0.14,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/pasta.png"),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      const Text('Spicy Pasta'),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      Text(
                                        'Serving 1',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: width * 0.18,
                                            height: height * 0.032,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff78B0A3),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6.6))),
                                            child: const Center(
                                              child: Text(
                                                'Recipe',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '245kcl',
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          )
                                        ],
                                      )
                                      // ElevatedButton(
                                      //     onPressed: () {
                                      //       Get.to(Favorites());
                                      //     },
                                      //     child: Text('Next Page'))
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ]),
            ),
            Center(child: Text("Home")),
            Center(child: Text("Profile")),
            Center(child: Text("Settings")),
          ], // Show the widget at the current index
        );
      }),
    );
  }
}
