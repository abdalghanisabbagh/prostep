import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prostep1/presentation/resources/assets_manger.dart';
import 'package:prostep1/presentation/resources/constants.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';
import 'package:prostep1/presentation/resources/stringes_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

 /* _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashdelay), _getNext);
  }*/

  _getNext() {
    Navigator.pushReplacementNamed(context, Routes.onbording);
  }

  @override
 /* void initState() {
    super.initState();
    _startDelay();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              AppStrings.onboardingtitle1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(135, 42, 86, 121),
              ),
            ),
          ),
          Text(
            AppStrings.onboardingsubtitle1,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 42, 86, 121),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Image(image: AssetImage(ImageAssets.splashlogo2)),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
