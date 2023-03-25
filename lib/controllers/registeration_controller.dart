// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/screens/resources/routes_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../utils/api_endpoints.dart';

class RegisterationController extends GetxController {
  int? usertype;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail(String userController, String emailController,
      String passwordController, int userType) async {
    var headers = {'Content-Type': 'application/json'};

    var url = Uri.parse(
        ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
    Map body = {
      "userName": userController,
      "password": passwordController,
      "email": emailController,
      "phoneNumber": "string",
      "userType": userType,
      "deviceToken": "string",
    };
    http.Response response =
        await http.post(url, body: jsonEncode(body), headers: headers);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      var token = json['token'];
      print("the token user $userController  +  $token");
      final SharedPreferences prefs = await _prefs;
      await prefs.setString('token', token);

      Get.offNamed(Routes.getCoachorStudent(userType));
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
    }
  }
}
