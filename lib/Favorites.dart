import 'package:abc/diet_items.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
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
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: CircularMenu(
        alignment: Alignment.bottomCenter,
        toggleButtonColor: Colors.blue,
        items: [
          CircularMenuItem(icon: Icons.add_alert, onTap: () {}),
          CircularMenuItem(icon: Icons.construction_rounded, onTap: () {}),
          CircularMenuItem(icon: Icons.email, onTap: () {}),
          CircularMenuItem(icon: Icons.add_a_photo, onTap: () {}),
          CircularMenuItem(
              icon: Icons.contacts_sharp,
              onTap: () {
                Get.to(Dietitems());
              }),
        ],
      ),
    );
  }
}
