import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import 'MainHome.dart';
class success extends StatefulWidget {
  @override
  _successState createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
SizedBox(height: 40,),
              Center(child: Icon(Icons.check_circle,color: Colors.green,size: 60,)),
              Text("Success!",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30
              ),),  Center(
                child: Text("Thank you for chosing ",style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,
                ),),
              ), Center(
                child: Text("chosing our  service and trust our doctors ",style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,
                ),),
              ),Center(
                child: Text(" to take",style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),

                          spreadRadius: 5,

                          blurRadius: 7,

                          offset: Offset(
                              0, 3), // changes position of shadow
                        ),]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/images/d1.jpg"),
                          maxRadius: 30,
                        ),
                        Text("Barbara Michel",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22
                        ),),
                        Text("Blood Test",style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16
                        ),),

                        SizedBox(height: 10,),
                        Text("Date & Time",style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16
                        ),),
                        Text("Wednessday, December 18",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22
                        ),), SizedBox(height: 10,),
                        Text("Address",style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16
                        ),),
                        Text("Amin Digonastic",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22
                        ),),Text("Uptime",style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16
                        ),),
                        Text("9 AM - 9 PM",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                        ),),
                        SizedBox(height: 40,),


                      ],

                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.base
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 5,bottom: 5),
                      child: Text(
                        "Back to home",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
