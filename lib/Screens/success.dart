import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import 'MainHome.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.02),
                const Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xff00C82F),
                    size: 60,
                  ),
                ),
                SizedBox(height: height * 0.01),
                const Text(
                  "Success!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: height * 0.01),
                const Center(
                  child: Text(
                    "Thank you for chosing our\nservice and trust our doctors to take",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.11,
                    vertical: height * 0.02,
                  ),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/images/d1.jpg"),
                            maxRadius: 37.2,
                          ),
                          const Text(
                            "Barbara Michel",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          const Text(
                            "Date",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Wednessday, December 18",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          const Text(
                            "Address",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Amin Diagnostic Center",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          const Text(
                            "Uptime",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "09:00 AM- 09:00 PM",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          const Text(
                            "Token",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "107",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MainHome(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.base),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1, vertical: height * 0.015),
                        child: const Text(
                          "Back to home",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
