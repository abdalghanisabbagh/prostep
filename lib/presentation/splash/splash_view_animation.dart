import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prostep1/presentation/resources/color_manger.dart';
class MyCustomSplashScreen extends StatefulWidget {
  @override
  _MyCustomSplashScreenState createState() => _MyCustomSplashScreenState();
}

class _MyCustomSplashScreenState extends State<MyCustomSplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize =3;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.06;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _containerSize = 1;
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 5), () {
      setState(() {
      /*  Navigator.pushReplacement(
          context,
          PageTransition(const OnBoardingView(),Curves.bounceInOut),
        );*/
        
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:ColorManger.backgroundsplash,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                  duration: const Duration(milliseconds: 4000), //text
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: height / _fontSize),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: _textOpacity,
                child: const Text(
                  'Grow with us! ',
                  style: TextStyle(
                    color: Color.fromARGB(155, 42, 86, 121),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 6000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 6000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: width / _containerSize,
                  width: width / _containerSize,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorManger.backgroundsplash,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                      Image.asset('assets/images/prostepsplash.png')
                
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'YOUR APP\'S NAME',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}*/
