// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  GlobalKey<ScaffoldState> sideMenuKey = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void openDrawer() {
    sideMenuKey.currentState!.openEndDrawer();
  }
}
