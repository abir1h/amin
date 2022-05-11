import 'dart:convert';
import 'dart:io';

import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';
import'package:http/http.dart'as http;

class test_scedule_pop extends StatefulWidget {




  @override
  _test_scedule_popState createState() => _test_scedule_popState();
}

class _test_scedule_popState extends State<test_scedule_pop> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // slide=emergency();

  }
  ImagePicker picker = ImagePicker();
  var _image;
  Future takephoto_gallary() async {
    XFile? image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image!.path);
    });
    //return image;
  }
  bool isrequest=false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Dialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Color(0xFFF7F7F7),

      child: Wrap(
        children: [
          contentBox(context),
        ],
      ),
    );

  }

  contentBox(context){
    String _chosenValue;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return
      Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                height: 50,
                width: width,
                child:   Center(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Set Schedule',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)),
                    ],
                  ),
                ),
              ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Date",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                       decoration: BoxDecoration(
                           border: Border.all(color: AppColors.base),
                           borderRadius: BorderRadius.circular(10)

                       ),
                       child:Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           decoration: InputDecoration(
                               hintText: "dd/mm/yy",
                               border: InputBorder.none
                           ),
                         ),
                       )
                   ),
                 )
               ],
             ),Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Time",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                       decoration: BoxDecoration(
                           border: Border.all(color: AppColors.base),
                           borderRadius: BorderRadius.circular(10)

                       ),
                       child:Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Expanded(
                               child: TextFormField(

                                 decoration: InputDecoration(
                                   suffixIcon: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text('AM',style: TextStyle(color: AppColors.base),),
                                   ),
                                     hintText: "00.00",
                                     border: InputBorder.none
                                 ),
                               ),
                             ),
                           ],
                         ),
                       )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: "Note"
                     ),
                   ),
                 ),
                 SizedBox(height: 25,),
                 InkWell(
                   onTap: (){Navigator.pop(context);},
                   child: Center(
                     child: Container(
                       decoration: BoxDecoration(
                         color: AppColors.base,
                         borderRadius: BorderRadius.circular(10)

                       ),child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       ),
                     ),
                   ),
                 )
               ],
             )

            ],
          ),
        ),
      );
  }
}
