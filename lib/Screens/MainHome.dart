import 'dart:io';

import 'package:amin_diagonastic/Screens/bottom_nav/appointments.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/check_up.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/profile.dart';
import 'package:amin_diagonastic/Screens/bottom_nav/search.dart';
import 'package:amin_diagonastic/utils/color_s.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import 'bottom_nav/home.dart';
class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int current_tab=0;
  final List<Widget> screens=[

    search(),
    appointments(),

    checkup(),
    profile()
  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=home();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        current_tab==1?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome()))
            :current_tab==2?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome())):current_tab==3?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome())):showDialog(
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
              currentScreen=home();
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
                        currentScreen=search();
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
                            currentScreen=appointments();
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
                        currentScreen=checkup();
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
                        currentScreen=profile();
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
