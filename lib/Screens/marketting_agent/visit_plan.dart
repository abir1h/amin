import 'package:amin_diagonastic/Screens/profile_section/medicine_scedule.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class visit_plan extends StatefulWidget {
  @override
  _visit_planState createState() => _visit_planState();
}

class _visit_planState extends State<visit_plan> {
  @override
  Widget build(BuildContext context) {var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor Visit Plan",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: (){
                              // showDialog(
                              //     context:
                              //     context,
                              //     builder:
                              //         (context) {
                              //       return medicine_scedule_pop(
                              //       );
                              //     });
                            },
                            child:CircleAvatar(
                                backgroundColor: AppColors.base,
                                child: Icon(Icons.timelapse_outlined,color: Colors.white,))
                        )
                    )],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:AppColors.inner.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Thomas Enderson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Dentist , MBBS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('Dhaka , Bangladesh',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ), Column(
                          crossAxisAlignment: CrossAxisAlignment. center,
                          children: [
                            Text('Time',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('9 PM - 9 AM',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:AppColors.inner.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Thomas Enderson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Dentist , MBBS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('Dhaka , Bangladesh',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ), Column(
                          crossAxisAlignment: CrossAxisAlignment. center,
                          children: [
                            Text('Time',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('9 PM - 9 AM',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:AppColors.inner.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Thomas Enderson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Dentist , MBBS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('Dhaka , Bangladesh',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ), Column(
                          crossAxisAlignment: CrossAxisAlignment. center,
                          children: [
                            Text('Time',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('9 PM - 9 AM',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:AppColors.inner.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Thomas Enderson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Dentist , MBBS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('Dhaka , Bangladesh',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ), Column(
                          crossAxisAlignment: CrossAxisAlignment. center,
                          children: [
                            Text('Time',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                            Text('9 PM - 9 AM',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
