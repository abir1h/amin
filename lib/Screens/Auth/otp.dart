import 'package:amin_diagonastic/Screens/boarding.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class otp extends StatefulWidget {
  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  TextEditingController otp_1 = TextEditingController();
  TextEditingController otp_2 = TextEditingController();
  TextEditingController otp_3 = TextEditingController();
  TextEditingController otp_4 = TextEditingController();
  Widget _textFieldOTP(
      {required bool first, last, required TextEditingController controller_}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controller_,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color:AppColors.base),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: GestureDetector(
            //     onTap: () => Navigator.pop(context),
            //     child: Icon(
            //       Icons.arrow_back,
            //       size: 32,
            //       color: Colors.black54,
            //     ),
            //   ),
            // ),

            ClipPath(
              clipper: WaveClipperTwo(flip: false),
              child: Container(
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFB81C2B),
                      Color(0xFF7B0C16),

                    ],
                  ),),
                child: Center(child: Text("OTP Verification",style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.white
                ),),),
              ),
            ),

            SizedBox(
              height: 24,
            ),
            Text(
              'Verification',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your OTP code number",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: _textFieldOTP(
                                first: true,
                                last: false,
                                controller_: otp_1)),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: _textFieldOTP(
                                first: false,
                                last: false,
                                controller_: otp_2)),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: _textFieldOTP(
                                first: false,
                                last: false,
                                controller_: otp_3)),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: _textFieldOTP(
                                first: false,
                                last: true,
                                controller_: otp_4)),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // role_of=='teacher'?otpconfirm_teacher()
                          // print('u');
                          // print(otp_1.text +
                          //     otp_2.text +
                          //     otp_3.text +
                          //     otp_4.text);
                          // role_of == 'teacher'
                          //     ? otpconfirm_teacher(otp_1.text +
                          //     otp_2.text +
                          //     otp_3.text +
                          //     otp_4.text)
                          //     : otpconfirm_school(otp_1.text +
                          //     otp_2.text +
                          //     otp_3.text +
                          //     otp_4.text);
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>OnBoardingPage()));

                        },
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.base),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Didn't you receive any code?",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Resend New Code",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );

  }
}
