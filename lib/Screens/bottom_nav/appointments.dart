import 'package:amin_diagonastic/utils/colors.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class appointments extends StatefulWidget {
  @override
  _appointmentsState createState() => _appointmentsState();
}

class _appointmentsState extends State<appointments> {
  bool status=false;
  List confirm=[1,1,1,0,1,0,0,1,0,1];
  @override
  Widget build(BuildContext context) {    var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return  SafeArea(
      child:  Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Appointments",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                  )
                ],
              ),
              Divider(color: Colors.grey,),
              Container(
                height: height/1.2,
                child: ListView.builder(

                  shrinkWrap: true,
                  itemCount: 10,

                  itemBuilder: (_,index){
                    return               Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: Row(                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Row(
                                  children: [
                                    CircularProfileAvatar(
                                        'null',

                                        child: Image.asset(
                                          'assets/images/d1.jpg',fit: BoxFit.cover,
                                        ),
                                        elevation: 5,
                                        radius: 30

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                confirm[index]==1?Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.confirm,

                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Confirmed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                                  ),
                                ):Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,

                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Cancelled',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(color: Colors.black,)
                        ],
                      ),
                    );

                  },

                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
