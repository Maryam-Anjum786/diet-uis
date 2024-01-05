import 'package:get/get.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class BottomController extends GetxController with GetSingleTickerProviderStateMixin {
  late MotionTabBarController motionTabBarController;
  RxInt currentIndex = 1.obs; // Use RxInt to observe changes

  @override
  void onInit() {
    super.onInit();
    motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  void changeTab(int index) {
    currentIndex.value = index; // Update the currentIndex value
    motionTabBarController.index = index;
    update(); // Update the controller state
  }

  @override
  void onClose() {
    motionTabBarController.dispose();
    super.onClose();
  }
}
