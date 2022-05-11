import 'package:amin_diagonastic/Screens/Doctor/bottom_navbar/profile.dart';

import 'package:amin_diagonastic/Screens/search/catagory_search.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class doctor_search extends StatefulWidget {
  @override
  _doctor_searchState createState() => _doctor_searchState();
}

class _doctor_searchState extends State<doctor_search> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Search",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Location",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: width,
              height: height / 5,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>catagory(catagry: "Dentist")));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: height / 10,
                                width: width / 4.2,
                                decoration: BoxDecoration(
                                    color: AppColors.base,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: SvgPicture.asset('assets/images/tooth.svg',height: 40,width: 40,color: Colors.white,),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Dentist',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              const Text(
                                '50 Doctors',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(

              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_,index){
                    return            Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15,bottom: 15),
                      child: InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_profile()));
                        },
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),

                                spreadRadius: 3,

                                blurRadius: 7,

                                offset: Offset(1, 9), // changes position of shadow
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: height / 4,
                                width: width,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/d1.jpg',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Jhon Wilson",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "BDT 500 /pv",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "MBBS",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ), Text(
                                      "  . 5 years",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,

                                          fontSize: 12),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Dentist",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ), Text(
                                      "  . Popular Diagnostic Centre",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,

                                          fontSize: 12),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );

                  }),
            )
          ],
        ),
      )),
    );
  }
}
