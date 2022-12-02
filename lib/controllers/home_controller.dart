import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> sideMenuKey = GlobalKey<ScaffoldState>();

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
