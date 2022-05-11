import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class identity extends StatefulWidget {
  @override
  State<identity> createState() => _identityState();
}

class _identityState extends State<identity> {
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
                        "Identity",
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Name',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Phone',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
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
                              child: Text("Update Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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

              ],
            ),
          ),
        ));
  }
}
