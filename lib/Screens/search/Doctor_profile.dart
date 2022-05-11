import 'package:amin_diagonastic/Screens/Apppointments/get_appointment.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class doctor_profile extends StatefulWidget {

  @override
  _doctor_profileState createState() => _doctor_profileState();
}

class _doctor_profileState extends State<doctor_profile> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                color: AppColors.grey_b
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 35,), onPressed: (){Navigator.pop(context);},
                    ),
                   Center(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,

                       children: [
                         CircleAvatar(
                           backgroundImage:AssetImage("assets/images/d1.jpg"),
                           maxRadius: 50,
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text(
                               "David Shimmer",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25),
                             ), Text(
                               "Dentiist . MBBS",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15),
                             ), Text(
                               "10 years Experience",
                               style: TextStyle(
                                   color: Colors.grey,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 14),
                             ),Text(
                               "Uptime - 9AM - 9 PM",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.normal,
                                   fontSize: 14),
                             ),
                           ],
                         ),
                       ],
                     ),
                   )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Get an Appointment",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Get_appointment()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.base
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18,top: 5,bottom: 5),
                    child: Text(
                      "Appointment",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
