import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../MainHome.dart';
import 'otp.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                child: Center(child:  Center(
                  child: Image.asset(
                    "assets/images/Asset_1.png",
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),),
              ),
            ),
            Text('Register',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "User Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Numner"
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Address"
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password"
                ),
              ),
            ),

            SizedBox(height: 25,),
            Center(
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_)=>otp()));
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.base,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("Register",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
              ),
            ),            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ? ",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  ),), InkWell(
                    onTap: (){},
                    child: Text("Sign In Now !! ",style: TextStyle(
                        color: AppColors.base,fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
