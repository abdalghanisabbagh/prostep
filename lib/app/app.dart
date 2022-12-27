import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';
import 'package:prostep1/presentation/resources/theme_manger.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyApp._internal();

  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      initialRoute: Routes.getaboutthisCourse(),
      theme: getApplicationTheme(),
    );
  }
}
