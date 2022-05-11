import 'dart:io';

import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/appointments.dart';
import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/check_up.dart';
import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/home.dart';
import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/profile.dart';
import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/search.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/appointments.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/check_up.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/profile.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/search.dart';
import 'package:amin_diagonastic/utils/color_s.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class doctor_mainHome extends StatefulWidget {
  @override
  _doctor_mainHomeState createState() => _doctor_mainHomeState();
}

class _doctor_mainHomeState extends State<doctor_mainHome> {
  int current_tab=0;
  final List<Widget> screens=[

    doctor_search(),
    doctor_appointment(),

    doctor_checkup(),
    doctor_profile()
  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=doctor_home();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        current_tab==1?Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_mainHome()))
            :current_tab==2?Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_mainHome())):current_tab==3?Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_mainHome())):showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm Exit"),
                content: Text("Are you sure you want to exit?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("YES"),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                  FlatButton(
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
        );
        return true;
      },
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFBE1E2D),
          onPressed: () {

            setState(() {
              currentScreen=doctor_home();
            });
          },
          child: Icon(Icons.home,color:Colors.white),


        ),
        bottomNavigationBar: BottomAppBar(
          color:Color(0xFFBE1E2D),

          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Container(
            height: MediaQuery.of(context).size.height/12,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: MaterialButton(
                    minWidth: 20,
                    onPressed: (){
                      setState(() {
                        currentScreen=doctor_search();
                        current_tab=0;
                      });

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                            Icons.search,
                            color:Colors.white

                        ),
                        Text(
                            "Search",
                            style:TextStyle(
                              fontSize: 14,
                              color:Colors.white,
                            )
                        )
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:38.0),
                  child: Container(
                    child: MaterialButton(

                      minWidth: 20,

                      onPressed: (){
                        setState(() {
                          currentScreen=doctor_appointment();
                          current_tab=1;
                        });

                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.account_balance_wallet_sharp,
                              color: Colors.white
                          ),
                          const Text(
                              "Appointments",
                              style:TextStyle(
                                fontSize: 14,
                                color:Colors.white,
                              )
                          )
                        ],
                      ),

                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 20,

                  onPressed: (){
                    setState(() {
                      currentScreen=doctor_checkup();
                      current_tab=3;
                    });

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white
                      ),
                      const Text(
                          "Tests",
                          style:TextStyle(
                            fontSize: 14,
                            color:Colors.white,
                          )
                      )
                    ],
                  ),

                ),
                // MaterialButton(                    minWidth: 20,
                //
                //   onPressed: (){
                //
                //
                //   },
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //
                //       Padding(
                //         padding: const EdgeInsets.only(top: 25.0),
                //         child: Text(
                //           "Best Aid",
                //           style: GoogleFonts.lato(
                //               fontSize: 18,
                //               fontWeight: FontWeight.w600,
                //
                //               color: Colors.white
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                //
                // ),
                Container(
                  child: MaterialButton(                    minWidth: 20,

                    onPressed: (){
                      setState(() {
                        currentScreen=doctor_profile();
                        current_tab=1;
                      });

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                            Icons.person,
                            color: Colors.white
                        ),
                        Text(
                            "Profile",
                            style: TextStyle(
                              fontSize: 14,
                              color:Colors.white,
                            )
                        )
                      ],
                    ),

                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
