import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_uni extends StatefulWidget {
  @override
  _search_uniState createState() => _search_uniState();
}

class _search_uniState extends State<search_uni> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(height * 0.01),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.05,
                            width: width * 0.65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.base,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          const Icon(
                            Icons.search,
                            color: AppColors.base,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Text(
              //     "Dentist",
              //     style: TextStyle(
              //         color: Colors.black,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 25),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Container(
              //         height: height/20,
              //         width: width/1.8,
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: AppColors.base)
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.only(left:8.0),
              //           child: TextFormField(
              //             decoration: InputDecoration(
              //                 hintText: "Search"
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: width/10,),
              //       Icon(Icons.search_uni,color: AppColors.base,size: 45,)
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20,),
              // Container(
              //   width: width,
              //   height: height / 5,
              //   child: ListView.builder(
              //       itemCount: 10,
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       itemBuilder: (_, index) {
              //         return Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: InkWell(
              //             onTap: (){
              //               Navigator.push(context, MaterialPageRoute(builder: (_)=>search_uni(catagry: "Dentist")));
              //             },
              //             child: Container(
              //               child: Column(
              //                 children: [
              //                   Container(
              //                     decoration: BoxDecoration(
              //                         color: AppColors.base,
              //                         borderRadius: BorderRadius.circular(15)),
              //                     child: Column(
              //                       children: [
              //                         Padding(
              //                           padding: EdgeInsets.all(8.0),
              //                           child: Row(
              //                             children: [
              //                               CircleAvatar(
              //                                 backgroundImage:AssetImage("assets/images/d1.jpg"),
              //                                 maxRadius: 35,
              //                               ),
              //                               Padding(
              //                                 padding: const EdgeInsets.all(8.0),
              //                                 child: Column(
              //                                   crossAxisAlignment: CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       "Steve Jhon",
              //                                       style: TextStyle(
              //                                           color: Colors.white,
              //                                           fontWeight: FontWeight.bold,
              //                                           fontSize: 14),
              //                                     ), Text(
              //                                       "Dentiist . Amin Diagonastic",
              //                                       style: TextStyle(
              //                                           color: Colors.white,
              //                                           fontWeight: FontWeight.bold,
              //                                           fontSize: 14),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                         Padding(
              //                           padding: EdgeInsets.all(8.0),
              //                           child: Row(
              //                             mainAxisAlignment: MainAxisAlignment.center,
              //                             children: [
              //
              //                               Text(
              //                                 "300 / hr",
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize: 14),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //
              //                       ],
              //                     ),
              //                   ),
              //
              //                 ],
              //               ),
              //             ),
              //           ),
              //         );
              //       }),
              // ),
              // Divider(color: Colors.grey,),
              // Container(
              //   width: width,
              //   child: ListView.builder(
              //       itemCount: 10,
              //       scrollDirection: Axis.vertical,
              //       shrinkWrap: true,
              //       physics: NeverScrollableScrollPhysics(),
              //       itemBuilder: (_, index) {
              //         return InkWell(
              //           onTap: (){
              //             Navigator.push(context, MaterialPageRoute(builder: (_)=>doctor_profile()));
              //
              //           },
              //           child: Container(
              //             decoration: BoxDecoration(
              //             ),
              //             child:                                      Column(
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Row(
              //                       children: [
              //                         CircleAvatar(
              //                           backgroundImage:AssetImage("assets/images/d1.jpg"),
              //                           maxRadius: 35,
              //                         ),
              //                         Padding(
              //                           padding: const EdgeInsets.all(8.0),
              //                           child: Column(
              //                             crossAxisAlignment: CrossAxisAlignment.start,
              //                             children: [
              //                               Text(
              //                                 "Steve Jhon",
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize: 22),
              //                               ), Text(
              //                                 "Dentiist . MBBS",
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize: 14),
              //                               ), Text(
              //                                 "10 years Experience",
              //                                 style: TextStyle(
              //                                     color: Colors.grey,
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize: 14),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                     Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: Text(
              //                         "BDT 400 / pv",
              //                         style: TextStyle(
              //                             color: Colors.black,
              //                             fontWeight: FontWeight.bold,
              //                             fontSize: 14),
              //                       ),
              //                     ),
              //
              //                   ],
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.only(left:18.0,right: 18),
              //                   child: Divider(color: Colors.grey,),
              //                 )
              //               ],
              //             ),
              //
              //
              //
              //           ),
              //         );
              //       }),
              // ),
              Container(
                margin: EdgeInsets.only(left: width * 0.14),
                padding: EdgeInsets.only(left: width * 0.03),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.04,
                      width: width * 0.185,
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.015,
                        vertical: height * 0.005,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.amin_lite,
                      ),
                      child: const Center(
                        child: Text(
                          'Doctor',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.05),
                    Container(
                      height: height * 0.04,
                      width: width * 0.185,
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.015,
                        vertical: height * 0.005,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.amin_lite,
                      ),
                      child: const Center(
                        child: Text(
                          'Test',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.05),
                    Container(
                      height: height * 0.04,
                      width: width * 0.185,
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.015,
                        vertical: height * 0.005,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.amin_lite,
                      ),
                      child: const Center(
                        child: Text(
                          'Post',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.05),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.02),
                child: Container(
                  color: Colors.grey,
                  height: 2,
                  width: width,
                ),
              ),
              ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                        vertical: height * 0.01,
                      ),
                      child: Container(
                        height: height * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.03,
                                    vertical: height * 0.02,
                                  ),
                                  child: Container(
                                    height: height / 11,
                                    width: width / 6.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image:
                                            AssetImage('assets/images/d1.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02,
                                    vertical: height * 0.02,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Tomas Anderson",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      const Text(
                                        "Dentis - 10 years Experience",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "BDT 400/ pv",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
