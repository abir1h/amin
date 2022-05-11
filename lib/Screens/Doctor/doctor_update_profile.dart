import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class doctor_identity extends StatefulWidget {
  @override
  State<doctor_identity> createState() => _doctor_identityState();
}

class _doctor_identityState extends State<doctor_identity> {
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Name',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Phone',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Medical School',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Education',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Awards',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Visit Rate',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Up Time',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold),),
                      TextFormField(
                        decoration: InputDecoration(hintText: ""),
                      ),
                    ],
                  ),
                ),

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
                ),
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
                

              ],
            ),
          ),
        ));
  }
}
