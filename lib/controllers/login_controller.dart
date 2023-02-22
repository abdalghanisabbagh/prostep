import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/screens/resources/routes_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../utils/api_endpoints.dart';

class LoginController extends GetxController {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> login() async {
    var headers = {'Content-Type': 'application/json'};
    var url =
        Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);
    Map body = {
      "userName": userController.text,
      "password": passwordController.text,
      "rememberMe": false,
      "deviceToken": "string"
    };
    http.Response response =
        await http.post(url, body: jsonEncode(body), headers: headers);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      var token = json['token'];
      // ignore: avoid_print
      print("the token user ${userController.text}  + $token");
      final SharedPreferences prefs = await _prefs;
      await prefs.setString('token', token);
      userController.clear();
      emailController.clear();
      passwordController.clear();
      Get.offNamed(Routes.mainRoute);
    } else {
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(response.body.toString())],
            );
          });
     // update();
      // throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
    }
  }
}