import 'package:abc/controller.dart';
import 'package:abc/pickYourOwn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Controller controller = Get.put(Controller());

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: height * 0.035,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Diet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Days',
                style: TextStyle(
                  color: const Color(0xff78B0A3),
                  fontSize: height * 0.024,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Obx(() => InkWell(
                            onTap: () {
                              controller.selectedButtonIndex.value = index;
                            },
                            child: Container(
                              width: width * 0.13,
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                  color: controller.selectedButtonIndex.value ==
                                          index
                                      ? const Color(0xff78B0A3)
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4.3))),
                              child: Center(
                                child: Text(
                                  controller.days[index],
                                  style: TextStyle(
                                      color: controller
                                                  .selectedButtonIndex.value ==
                                              index
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: height * 0.025),
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
            SizedBox(
              height: height * 0.016,
            ),
            const Divider(
              indent: 18,
              endIndent: 18,
              thickness: 1,
            ),
            Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.14,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.jpg"),
                      )),
                ),
                Text(
                  'Breakfast',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width,
              height: height * 0.31,
              child: InkWell(
                onTap: () {
                  Get.to(const PickYourOwn());
                },
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.7,
                              height: height * 0.13,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border:
                                    Border.all(color: const Color(0XFFD6D6D6)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: width * 0.24,
                                    height: height * 0.3,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/meal.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 13.0),
                                        child: Text(
                                          'Food 1',
                                          style: TextStyle(
                                              fontSize: height * 0.018,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                      Text(
                                        "Recommended:\n175 kcal . 5g net carbs",
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: height * 0.013,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Container(
                                width: width * 0.14,
                                height: height * 0.07,
                                decoration: const BoxDecoration(
                                  color: Color(0xff78B0A3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.14,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.jpg"),
                      )),
                ),
                Text(
                  'Lunch',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width,
              height: height * 0.31,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.7,
                            height: height * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border:
                                  Border.all(color: const Color(0XFFD6D6D6)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.24,
                                  height: height * 0.3,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/meal.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 13.0),
                                      child: Text(
                                        'Food 1',
                                        style: TextStyle(
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                    Text(
                                      "Recommended:\n175 kcal . 5g net carbs",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: height * 0.013,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: width * 0.14,
                              height: height * 0.07,
                              decoration: const BoxDecoration(
                                color: Color(0xff78B0A3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.14,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.jpg"),
                      )),
                ),
                Text(
                  'Snacks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width,
              height: height * 0.31,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.7,
                            height: height * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border:
                                  Border.all(color: const Color(0XFFD6D6D6)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.24,
                                  height: height * 0.3,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/meal.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 13.0),
                                      child: Text(
                                        'Food 1',
                                        style: TextStyle(
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                    Text(
                                      "Recommended:\n175 kcal . 5g net carbs",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: height * 0.013,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: width * 0.14,
                              height: height * 0.07,
                              decoration: const BoxDecoration(
                                color: Color(0xff78B0A3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.14,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.jpg"),
                      )),
                ),
                Text(
                  'Dinner',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width,
              height: height * 0.31,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.7,
                            height: height * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border:
                                  Border.all(color: const Color(0XFFD6D6D6)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.24,
                                  height: height * 0.3,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/meal.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 13.0),
                                      child: Text(
                                        'Food 1',
                                        style: TextStyle(
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                    Text(
                                      "Recommended:\n175 kcal . 5g net carbs",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: height * 0.013,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: width * 0.14,
                              height: height * 0.07,
                              decoration: const BoxDecoration(
                                color: Color(0xff78B0A3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
