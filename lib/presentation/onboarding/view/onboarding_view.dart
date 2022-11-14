import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prostep1/presentation/login/login_view.dart';
import 'package:prostep1/presentation/resources/assets_manger.dart';
import 'package:prostep1/presentation/resources/constants.dart';
import 'package:prostep1/presentation/resources/stringes_manger.dart';
import 'package:prostep1/presentation/resources/values_manger.dart';
import '../../../domain/models.dart';
import '../../resources/page_transition.dart';

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
  OnBoardingPAge(this._sliderObject, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_sliderObject.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.5), BlendMode.dstATop),
              ),
              gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 60, 60, 60),
                    // Color.fromARGB(255, 130, 17, 17),
                    Color.fromARGB(255, 17, 54, 82),
                  ],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.1,
                    0.4,
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
                  Navigator.pushReplacement(
            context, PageTransition(const LoginScreen()));
                },
                child: const Text(
                  AppStrings.skip,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 300),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 35, 35, 38)),
                onPressed: () {
                  if (_currentIndex <= 0) {
                    _pageController.animateToPage(
                      _getNextIndex(),
                      duration: const Duration(
                          seconds: AppConstants.sliderAnimationTime),
                      curve: Curves.ease,
                    );
                  } else {
                    Navigator.pushReplacement(
                        context, PageTransition( LoginScreen()));
                  }
                },
                child: const Text(
                  AppStrings.next,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 625, left: 30),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [_getBottomSheetWidget()],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /* Padding(
          padding: const EdgeInsets.all(AppSize.s12),
          child: GestureDetector(
            child: SizedBox(
              width: AppSize.s18,
              height: AppSize.s18,
              child: SvgPicture.asset(ImageAssets.leftArrowIc),
            ),
            onTap: () {
              _pageController.animateToPage(_getPreviousIndex(),
                  duration: const Duration(
                      seconds: AppConstants.sliderAnimationTime),
                  curve: Curves.bounceInOut);
            },
          ),
        ),*/
        Row(
          children: [
            for (int i = 0; i < 2; i++)
              Padding(
                padding: const EdgeInsets.all(AppSize.s8),
                child: _getProperCircle(i),
              )
          ],
        ),
/*
        //right icon
        Padding(
          padding: const EdgeInsets.all(AppSize.s14),
          child: GestureDetector(
            child: SizedBox(
              width: AppSize.s20,
              height: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.rihgtArrowIc),
            ),
            onTap: () {
              _pageController.animateToPage(
                _getNextIndex(),
                duration:
                    const Duration(seconds: AppConstants.sliderAnimationTime),
                curve: Curves.easeInOutCubicEmphasized,
              );
            },
          ),
        )*/
      ],
    );
  }

  int _getPreviousIndex() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex == 0;
    }
    return previousIndex;
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


/* bottomSheet: Container(
          color: ColorManger.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.loginRoute);
                  },
                  child: Text(
                    AppStrings.skip,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              _getBottomSheetWidget()
            ],
          ),
        ),*/




 /*Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        Image(image: AssetImage(_sliderObject.image,),)
      ],
    );*/        



    
  /* Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManger.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSize.s12),
            child: GestureDetector(
              child: SizedBox(
                width: AppSize.s18,
                height: AppSize.s18,
                child: SvgPicture.asset(ImageAssets.leftArrowIc),
              ),
              onTap: () {
                _pageController.animateToPage(_getPreviousIndex(),
                    duration: const Duration(
                        seconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppSize.s8),
                  child: _getProperCircle(i),
                )
            ],
          ),

          //right icon
          Padding(
            padding: const EdgeInsets.all(AppSize.s14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.rihgtArrowIc),
              ),
              onTap: () {
                _pageController.animateToPage(_getNextIndex(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          )
        ],
      ),
    );
  }

  int _getPreviousIndex() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex == _list.length - 1;
    }
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex == 0;
    }
    return nextIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIC);
    }
  }*/