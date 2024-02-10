
import 'package:get/get.dart';

class BottomNavigation extends GetxController {
  RxInt currentIndex = 0.obs;

 onSelectedIndex(int index) {
    currentIndex.value = index;
  }
}
