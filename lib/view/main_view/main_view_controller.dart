import 'package:get/get.dart';

class MainViewController extends GetxController {
  int selectedIndex = 0;
  updateIndex(int index) {
    selectedIndex = index;
    update();
  }
}
