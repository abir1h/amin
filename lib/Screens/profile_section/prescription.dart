import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

import '../uplaod_pres.dart';

class prescription extends StatefulWidget {
  @override
  _prescriptionState createState() => _prescriptionState();
}

class _prescriptionState extends State<prescription> {
  int pres_lenght = 2;
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
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Presscriptions",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return upload_ss();
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.image_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "Upload Prescription",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(
                width: width,
                child: ListView.builder(
                  itemCount: pres_lenght,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return Padding(
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
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.02,
                            vertical: height * 0.01,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.1,
                                        vertical: height * 0.02,
                                      ),
                                      child: const Text(
                                        "27-12-2021",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset("assets/images/pres.png"),
                                ],
                              ),
                              Positioned(
                                left: width * 0.85,
                                top: -height * 0.02,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      pres_lenght--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.amin,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
