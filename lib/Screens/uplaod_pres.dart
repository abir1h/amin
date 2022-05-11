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

class upload_ss extends StatefulWidget {




  @override
  _upload_ssState createState() => _upload_ssState();
}

class _upload_ssState extends State<upload_ss> {

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
                  child: Column(
                    children: [
                      Text('Upload precription',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              _image!=null?Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.file(
                        _image,
                        fit: BoxFit.cover,height: 100,
                        width: 100,

                      ),
                    ),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      _image=null;
                    });

                  }, icon: Icon(Icons.clear))
                ],
              ): Padding(
                padding: const EdgeInsets.all(8.0),
                child:   Image.network(
                  'https://static.sdahaqq.com/images/uploadimageholder.jpg',height: 100,
                  width: 100,

                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      takephoto_gallary();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Choose".toUpperCase(),
                       style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  _image!=null?
                  isrequest==false? InkWell(

                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.base,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Submit ".toUpperCase(),
    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ):SpinKitThreeInOut(
                    color: Colors.blue,
                    size: 20,
                  ):Container()
                ],
              ),
            ],
          ),
        ),
      );
  }
}
