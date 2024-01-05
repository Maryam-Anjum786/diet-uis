import 'package:abc/Favorites.dart';
import 'package:abc/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dietitems extends StatelessWidget {
  const Dietitems({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.off(Favorites());
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
          'Diet Items',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(BottomNavigation());
                },
                child: const Text('Navigate to Next Screen')),
          )
        ],
      ),
    );
  }
}
