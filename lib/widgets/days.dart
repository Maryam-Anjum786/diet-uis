// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller.dart';
//
// class Days extends StatelessWidget {
//   Controller controller = Get.put(Controller());
//   Days({super.key,required this.text});
//   String text;
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     double height = size.height;
//     double width = size.width;
//     return Container(
//       width: width*0.13,
//       height: height*0.02,
//       decoration: BoxDecoration(
//           color: controller.selectedButtonIndex.value ==
//               ? Color(0xff78B0A3)
//               : Colors.transparent,
//           borderRadius: BorderRadius.all(Radius.circular(4.3))
//       ),
//       child: Center(
//         child: Text('01',style: TextStyle(
//             color: Colors.white,
//             fontSize: height*0.025
//         ),),
//       ),
//     );
//   }
// }
