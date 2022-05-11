import 'package:amin_diagonastic/Screens/Auth/login_screen.dart';
import 'package:amin_diagonastic/Screens/Doctor/payment.dart';
import 'package:amin_diagonastic/Screens/selec_language.dart';

import 'package:amin_diagonastic/Screens/settings/Help_support.dart';
import 'package:amin_diagonastic/Screens/settings/Refer.dart';
import 'package:amin_diagonastic/Screens/settings/change_password.dart';
import 'package:amin_diagonastic/Screens/settings/identity.dart';

import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'doctor_update_profile.dart';
class doctor_settings extends StatefulWidget {
  @override
  _doctor_settingsState createState() => _doctor_settingsState();
}

class _doctor_settingsState extends State<doctor_settings> {
  bool status=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>change_password()));
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.lock_open,color:Colors.white),
                      ),
                      ),
                    ),
                    Text("Change Password",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,)
            ,            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.notifications,color:Colors.white),
                      ),
                      ),
                    ),
                    Text("Notification",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterSwitch(
                    width: 40.0,
                    height: 20.0,
                    valueFontSize: 10.0,
                    toggleSize: 30.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 2.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ],
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_identity()));
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person,color:Colors.white),
                      ),
                      ),
                    ),
                    Text("Identity",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
              ),
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>refer()));
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person_add,color:Colors.white),
                      ),
                      ),
                    ),
                    Text("Refer Someone",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
              ),
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>payment()));
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/images/lan.svg',height: 25,width: 25,color: Colors.white,)
                      ),
                      ),
                    ),
                    Text("Payment",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
              ),
            ), SizedBox(height: 25,) ,InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>select_language()));
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10),
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/images/lan.svg',height: 25,width: 25,color: Colors.white,)
                      ),
                      ),
                    ),
                    Text("Language",style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.black,fontSize: 18
                    ),)
                  ],
                ),
              ),
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>help_support()));
              },              child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.base,
                        borderRadius: BorderRadius.circular(10),
                      ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.support_agent,color:Colors.white),
                    ),
                    ),
                  ),
                  Text("Help & Support",style: TextStyle(
                      fontWeight: FontWeight.bold
                      ,color: Colors.black,fontSize: 18
                  ),)
                ],
              ),
            ),
            ), SizedBox(height: 25,)
            ,
            InkWell(
              onTap: (){            Navigator.push(context, MaterialPageRoute(builder: (_)=>login()));
              },              child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.base,
                        borderRadius: BorderRadius.circular(10),
                      ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.logout,color:Colors.white),
                    ),
                    ),
                  ),
                  Text("Logout",style: TextStyle(
                      fontWeight: FontWeight.bold
                      ,color: Colors.black,fontSize: 18
                  ),)
                ],
              ),
            ),
            ),

          ],
        ),
      ),
    ));
  }
}
