import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import '../uplaod_pres.dart';
class rx_galalry extends StatefulWidget {
  @override
  _rx_galalryState createState() => _rx_galalryState();
}

class _rx_galalryState extends State<rx_galalry> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
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
            child: Text(
              "Rx Image Gallary",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: InkWell(
          //     onTap: (){
          //
          //       showDialog(
          //           context:
          //           context,
          //           builder:
          //               (context) {
          //             return upload_ss(
          //             );
          //           });
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: AppColors.base,
          //         borderRadius: BorderRadius.circular(15),
          //
          //       ),child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Icon(Icons.image_outlined,color: Colors.white,),
          //           Text("Upload Prescription",style: TextStyle(
          //             color: Colors.white,fontWeight: FontWeight.w500,
          //           ),),
          //         ],
          //       ),
          //     ),
          //     ),
          //   ),
          // ),
          // Divider(color: Colors.grey,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: AppColors.base
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Date ",style: TextStyle(color: Colors.white),),Icon(Icons.filter_list_alt,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: width,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return  Padding(
                    padding: const EdgeInsets.all(15.0),
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

                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("27-12-2021",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Image.asset("assets/images/pres.png"),

                          ],
                        ),
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
