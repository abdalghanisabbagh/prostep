import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/getmaincategories_models.dart';
import '../screens/resources/routes_manger.dart';
import '../utils/api_endpoints.dart';

class MyController extends GetxController {
  var data = <MyData>[].obs;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  void onInit() async {
    final rawData = await fetchData();
    data.value = rawData
        .map((item) => MyData(
            id: item['id'], name: item['name'], isSelected: item['isSelected']))
        .toList();
    super.onInit();
  }

  Future<void> chosemycategories(List<String> cat) async {
    final SharedPreferences prefs = await _prefs;
    for (int i = 0; i < cat.length; i++) {
      print("object is " + cat[i]);
    }
    final token = prefs.getString('token');

    var headers = {
      'accept': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var url = Uri.parse(
        ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.choosemycategories);
    Map body = {
      "id": cat,
    };
    http.Response response =
        await http.post(url, body: jsonEncode(body), headers: headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print(json.toString());
      print("the token user +  $token");
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
    }
  }
}

Future<List<Map<String, dynamic>>> fetchData() async {
  final response = await http.get(Uri.parse(
      ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.getmaincategories));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    return List<Map<String, dynamic>>.from(jsonData.map((item) => {
          'id': item['id'],
          'name': item['name'],
          'isSelected': false,
        }));
  } else {
    throw Exception('Failed to load data');
  }
}
