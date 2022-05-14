import 'dart:convert';

import 'package:amin_diagonastic/Screens/MainHome.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MainHome(),
      ),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return ShowUpAnimation(
      delayStart: const Duration(milliseconds: 50),
      animationDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeIn,
      direction: Direction.horizontal,
      offset: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/$assetName'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        showNextButton: true, color: AppColors.base,
        pages: [
          PageViewModel(
            title: "Discover doctor near you",
            body:
                "Find the best doctor you want by your location or neighbour.",
            image: _buildImage('b1.jpg'),
            decoration: pageDecoration.copyWith(
              bodyFlex: 2,
              imageFlex: 7,
              bodyAlignment: Alignment.bottomCenter,
              imageAlignment: Alignment.bottomCenter,
            ),
          ),
          PageViewModel(
            title: "Make a schedule easily",
            body:
                "Chose the time you want to make an appointment with a doctor",
            image: _buildImage('b2.jpg'),
            decoration: pageDecoration.copyWith(
              bodyFlex: 2,
              imageFlex: 7,
              bodyAlignment: Alignment.bottomCenter,
              imageAlignment: Alignment.bottomCenter,
            ),
          ),
          PageViewModel(
            title: "Enjoy treatment directly",
            body:
                "Enjoy handling directly from your doctor without having to wait long",
            image: _buildImage('b3.jpg'),
            decoration: pageDecoration.copyWith(
              bodyFlex: 2,
              imageFlex: 7,
              bodyAlignment: Alignment.bottomCenter,
              imageAlignment: Alignment.bottomCenter,
            ),
          ),
        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: false,
        nextFlex: 0,

        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        next: const Text('Next'),
        done: const Text(
          'Get Started',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.base,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeColor: AppColors.base,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
