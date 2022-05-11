import 'package:amin_diagonastic/Screens/Auth/login_screen.dart';
import 'package:amin_diagonastic/Screens/notification/notification.dart';
import 'package:amin_diagonastic/Screens/search/search.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../comments.dart';
import '../selec_language.dart';
import '../splash_screen.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: PreferredSize(


              preferredSize: Size.fromHeight(55.0), // here the desired height
              child: AppBar(
                // ...
                backgroundColor: Colors.white,

                flexibleSpace:               Container(
                    height: height/14,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(19),bottomLeft: Radius.circular(19),

                      ),
                    ),child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Asset_1.png',height: 35,width: 35,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){

                              },
                              child: const Text(
                                "Amin Diagonastc",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      )
                      ,            Row(
                        children: [
                          InkWell(
                              onTap:(){

                                Navigator.push(context, MaterialPageRoute(builder: (_)=>notification()));

                              },
                              child: SvgPicture.asset('assets/images/n2.svg',height: 20,width: 20,color: Colors.white,)),
                          IconButton(onPressed: (){                        Navigator.push(context, MaterialPageRoute(builder: (_)=>search_uni()));
                          }, icon: Icon(Icons.search,color:Colors.white,size:20))

                        ],
                      )
                      ,          ],
                  ),
                )
                ),


              )
          ),

          body: SingleChildScrollView(
          child: Column(
            children: [
//               Container(
//                 height: height/15,
//                 width: width,
//                 decoration: BoxDecoration(
//                   color: AppColors.base,
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(19),bottomLeft: Radius.circular(19),
//
//                 ),
//               ),child:Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                 Row(
//                 children: [
//                 Image.asset('assets/images/Asset_1.png',height: 35,width: 35,),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: InkWell(
//                       onTap: (){
//
//                       },
//                       child: const Text(
//                         "Amin Diagonastc",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//           )
// ,            Row(
//                 children: [
//                   InkWell(
//                       onTap:(){
//
//                         Navigator.push(context, MaterialPageRoute(builder: (_)=>notification()));
//
//                       },
//                       child: SvgPicture.asset('assets/images/n2.svg',height: 20,width: 20,color: Colors.white,)),
//                   IconButton(onPressed: (){                        Navigator.push(context, MaterialPageRoute(builder: (_)=>search_uni()));
//                   }, icon: Icon(Icons.search,color:Colors.white,size:20))
//
//                 ],
//           )
// ,          ],
//         ),
//               )
//               ),
//               SizedBox(height: 10,),
              Container(
                width: width,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(29),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),

                                  spreadRadius: 5,

                                  blurRadius: 7,

                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:AssetImage("assets/images/d1.jpg"),
                                      maxRadius: 25,
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
                                                fontSize: 18),
                                          ), Text(
                                            "Popualar Hospital . 19m",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Lorem Ipsum is a dammy text."),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/d1.jpg"),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset('assets/images/l.svg',height: 27,width: 27,),
                                    ), Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                          onTap:(){

                                            Navigator.push(context, MaterialPageRoute(builder: (_)=>comments()));

                                          },
                                          child: SvgPicture.asset('assets/images/l1.svg',height: 27,width: 27,)),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),


            ],
          ),
        )
      ),
    );
  }
}
