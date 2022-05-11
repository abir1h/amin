import 'dart:async';

import 'package:amin_diagonastic/Screens/selec_language.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import 'MainHome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var update;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    // Timer(Duration(milliseconds: 200),()=> );
    _controller!.forward();
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  startTimer() async {
    var duration = Duration(milliseconds: 2000);
    return new Timer(duration, route);
  }

  Naviagate() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => select_language()));
  }

  Naviagatelogin() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (_) => login_screen()));
  }

  Naviagatemain() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (_) => update_app()));
  }
  Naviagatemain2() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (_) => maintanence()));
  }

  var main = 3;
  var version;
  AnimationController? _controller;

  route() async {
    Naviagate();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFB81C2B),
            Color(0xFF7B0C16),

          ],
        ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/Asset_1.png",
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Amin Diagonastics",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
