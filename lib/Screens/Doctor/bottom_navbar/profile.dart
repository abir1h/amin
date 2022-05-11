import 'package:amin_diagonastic/Screens/Auth/login_screen.dart';
import 'package:amin_diagonastic/Screens/Doctor/doctor_settigns.dart';
import 'package:amin_diagonastic/Screens/profile_section/About.dart';
import 'package:amin_diagonastic/Screens/profile_section/medicine_s.dart';
import 'package:amin_diagonastic/Screens/profile_section/prescription.dart';
import 'package:amin_diagonastic/Screens/profile_section/setttings.dart';
import 'package:amin_diagonastic/Screens/profile_section/test_Report.dart';
import 'package:amin_diagonastic/Screens/profile_section/test_schedule.dart';


import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class doctor_profile extends StatefulWidget {
  @override
  _doctor_profileState createState() => _doctor_profileState();
}

class _doctor_profileState extends State<doctor_profile> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey_b,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
                      ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_settings()));
                           }, icon: Icon(Icons.more_horiz,color: Colors.black,size: 30 ,))
                         ],
                       ),
                     )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              backgroundImage:AssetImage("assets/images/d1.jpg"),
                              maxRadius: 50,
                            ),
                            Positioned(
                                top: 70,left:70,
                                child: CircleAvatar(
                                  radius: 15,
                                backgroundColor: Colors.green,
                                child: Icon(Icons.edit,color:Colors.white,size: 18,)))

                          ],
                        ), Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "David Shimmer",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ), Text(
                                "+88018684735",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),


                  ],
                )
                ,
                SizedBox(height: height/20,),
Container(
  height: height/1.5,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
),
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Visit Rate",
                        style: TextStyle(
                            color:AppColors.base,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ), Row(
                        children: [
                          Text(
                            "BDT 400  /",
                            style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),Text(
                            "   per visit",
                            style: TextStyle(
                                color:Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Completed",
                        style: TextStyle(
                            color:AppColors.base,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ), Row(
                        children: [
                          Text(
                            "30 ",
                            style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),Text(
                            " Consultation",
                            style: TextStyle(
                                color:Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),            SizedBox(height: 20,),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Biography",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Medical School ",
          style: TextStyle(
              color:AppColors.dark_grey,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Row(
          children:[
            Container(
              height: height/20,
              width: width/5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/h.png'),
                      fit: BoxFit.fitHeight
                  )
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harver Medical School",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),     Text(
                  "Boston,United States",
                  style: TextStyle(
                      color: AppColors.dark_grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            )
          ]
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Education ",
          style: TextStyle(
              color:AppColors.dark_grey,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "UCT , MIT , Stamford University",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Awards ",
          style: TextStyle(
              color:AppColors.dark_grey,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "CMS Stage ( 2014 ) , AAG Fellow ( 2015 )",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
      ),
    ],

  ),
),

)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
