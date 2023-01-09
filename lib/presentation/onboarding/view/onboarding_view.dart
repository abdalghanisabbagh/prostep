import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/resources/assets_manger.dart';
import 'package:prostep1/presentation/resources/constants.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';
import 'package:prostep1/presentation/resources/stringes_manger.dart';
import 'package:prostep1/presentation/resources/values_manger.dart';
import '../../../domain/models.dart';

final PageController _pageController = PageController();
int _currentIndex = 0;

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getsliderdata();
  List<SliderObject> _getsliderdata() => [
        SliderObject(AppStrings.onboardingtitle2,
            AppStrings.onboardingsubtitle2, ImageAssets.onborading1),
        SliderObject(AppStrings.onboardingtitle3,
            AppStrings.onboardingsubtitle3, ImageAssets.onborading2),
      ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPAge(_list[index]);
          },
        ),
      ),
    );
  }
}

class OnBoardingPAge extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPAge(this._sliderObject, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_sliderObject.image),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.5), BlendMode.dstATop),
              ),
              gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(0, 208, 208, 208),
                    Color.fromARGB(255, 29, 64, 91),
                    Color.fromARGB(255, 29, 64, 91),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.1,
                    0.7,
                    0.1,
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 15, right: 15),
            child: Text(
              _sliderObject.title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 560, left: 15, right: 15),
            child: Text(_sliderObject.subTitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 15),
            child: TextButton(
                onPressed: () {
                  Get.offNamed(Routes.getloginRoute());
                },
                child: const Text(
                  AppStrings.skip,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 280),
            child: SizedBox(
              width: 90,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 38),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                  onPressed: () {
                    if (_currentIndex <= 0) {
                      _pageController.animateToPage(
                        _getNextIndex(),
                        duration: const Duration(
                            seconds: AppConstants.sliderAnimationTime),
                        curve: Curves.ease,
                      );
                    } else {
                      Get.offNamed(Routes.getloginRoute());
                    }
                  },
                  child: const Text(
                    AppStrings.next,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 625, left: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [_getBottomSheetWidget()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Row(
      children: [
        Row(
          children: [
            for (int i = 0; i < 2; i++)
              Padding(
                padding: const EdgeInsets.all(AppSize.s8),
                child: _getProperCircle(i),
              )
          ],
        ),
      ],
    );
  }

  int _getNextIndex() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == 2) {
      nextIndex == 0;
    }
    return nextIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SizedBox(
        width: 25,
        height: 25,
        child: SvgPicture.asset(ImageAssets.doat2),
      );
    } else {
      return SizedBox(
        width: 25,
        height: 25,
        child: SvgPicture.asset(ImageAssets.doat1),
      );
    }
  }
}
