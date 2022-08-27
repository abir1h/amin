import 'dart:io';

import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

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

  bool isrequest = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: const Color(0xFFF7F7F7),
      child: Wrap(
        children: [
          contentBox(context),
        ],
      ),
    );
  }

  contentBox(context) {
    String _chosenValue;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: height * 0.5,
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Upload a precription',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                  const Text(
                    'Choose Image',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                ],
              ),
            ),
            _image != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image.file(
                            _image,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _image = null;
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                        ),
                      )
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/images/task_icon.svg'),
                  ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    takephoto_gallary();
                  },
                  child: Container(
                    width: width * 0.3,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Choose".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                _image != null
                    ? isrequest == false
                        ? InkWell(
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                color: AppColors.base,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Submit".toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SpinKitThreeInOut(
                            color: Colors.blue,
                            size: 20,
                          )
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
