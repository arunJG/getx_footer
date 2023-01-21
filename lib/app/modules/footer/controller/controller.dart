import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final tabIndex = 0.obs;

  // final homewidget = pages[0].obs;
  final homewidget = 'first'.obs;

  void setTabIndex(index) {
    tabIndex.value = index;
  }

  void setHomeWidget(value) {
    homewidget.value = value;
  }
}
