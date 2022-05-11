import 'package:amin_diagonastic/Screens/search/catagory_search.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar/profile.dart';
class refer extends StatefulWidget {
  @override
  _referState createState() => _referState();
}

class _referState extends State<refer> {
  @override
  Widget build(BuildContext context) {  var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
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
                    "Refer",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ), SizedBox(height: 25,)
            ,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: height/20,
                    width: width/1.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.base)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: AppColors.base,size: 30,),
                            hintText: "Search",
                            hintStyle: TextStyle(color: AppColors.base)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width/10,),

                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child:Text(
                "Refer",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Divider(color: Colors.grey,),

            Container(
              width: width,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_profile()));

                      },
                      child: Container(
                        decoration: BoxDecoration(
                        ),
                        child:                                      Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:AssetImage("assets/images/d1.jpg"),
                                      maxRadius: 35,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Steve Jhon",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ), Text(
                                            "Dentiist . MBBS",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ), Text(
                                            "10 years Experience",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BDT 400 / pv",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0,right: 18),
                              child: Divider(color: Colors.grey,),
                            )
                          ],
                        ),



                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
