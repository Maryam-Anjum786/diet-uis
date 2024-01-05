import 'package:get/get.dart';

class BottomBarController extends GetxController {
  final _selectedIndex = 0.obs;
  getIndex() => _selectedIndex.value;
  setIndex(val) => _selectedIndex.value = val;
}
