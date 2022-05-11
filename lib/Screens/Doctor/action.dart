import 'dart:convert';
import 'dart:core';

import 'package:amin_diagonastic/Screens/Doctor/refer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




class actions extends StatefulWidget {
  @override
  _actionsState createState() => _actionsState();
}

class _actionsState extends State<actions> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var count=0;
  var sum=10;
  final _formKey = GlobalKey<FormState>();
  bool issave = false;
  TextEditingController class_name = TextEditingController();
  TextEditingController class_fee = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Wrap(
        children: [
          contentBox(context),
        ],
      ),
    );
  }

  contentBox(context) {
    String _chosenValue;
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    List<String> buttonList = ["Inactive", "Active"];
    return Container(
      width: width/1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top:-50 ,
            left: width/3.5,
            child:
          CircleAvatar(
            backgroundImage:AssetImage("assets/images/d1.jpg"),
            maxRadius: 50,
          ),),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  SizedBox(height: 50,),

                  Text(
                    "Jhone Doe",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ), Text(
                    "Monday, October 10 ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),Text(
                    "8.00 am",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),                      SizedBox(height: 20,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Cancel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,),
                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (_)=>refer()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Refer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
