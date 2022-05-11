import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class change_password extends StatefulWidget {
  @override
  State<change_password> createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Change Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Current Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "New Password"),
              ),
            ) ,Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Confirm Password"),
              ),
            ),SizedBox(height: 15,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width/1.8,
                  decoration: BoxDecoration(
                    color: AppColors.base,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Update Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
            ),SizedBox(height: 15,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width/1.8,
                  decoration: BoxDecoration(
                    color: AppColors.butto_disable,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cancel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            Center(child: Text("Forget Password ?",style: TextStyle(color: AppColors.base,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    ));
  }
}
