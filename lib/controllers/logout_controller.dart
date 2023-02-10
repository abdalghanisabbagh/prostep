import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../presentation/resources/routes_manger.dart';

class LogoutController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> logout() async {
    final SharedPreferences prefs = await _prefs;
    // print(prefs.getString('token'));
    await prefs.remove('token');
    // ignore: avoid_print
    print("token now ${prefs.getString('token')}");
    Get.offNamed(Routes.loginRoute);
  }
}
