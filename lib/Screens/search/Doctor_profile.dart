import 'package:amin_diagonastic/Screens/Apppointments/get_appointment.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                decoration: const BoxDecoration(color: AppColors.grey_b),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/d1.jpg"),
                              maxRadius: 50,
                            ),
                            SizedBox(height: height * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "David Shimmer",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "MBBS, Dentiist - ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    // SizedBox(width: width * 0.02),
                                    Text(
                                      "10 years Experience",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.01),
                                const Text(
                                  "Uptime - 9AM - 9 PM",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Visit rate:  ",
                                      style: TextStyle(
                                        color: AppColors.amin,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "BDT 400 (Per Visit)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.02),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           height: height / 10,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(9),
              //             border: Border.all(color: Colors.grey),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(15.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 const Text(
              //                   "Visit Rate",
              //                   style: TextStyle(
              //                     color: AppColors.base,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 14,
              //                   ),
              //                 ),
              //                 Row(
              //                   children: const [
              //                     Text(
              //                       "BDT 400  /",
              //                       style: TextStyle(
              //                         color: Colors.black,
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 16,
              //                       ),
              //                     ),
              //                     Text(
              //                       "   per visit",
              //                       style: TextStyle(
              //                         color: Colors.grey,
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 10,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           height: height / 10,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(9),
              //             border: Border.all(
              //               color: Colors.grey,
              //             ),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(15.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 const Text(
              //                   "Completed",
              //                   style: TextStyle(
              //                     color: AppColors.base,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 14,
              //                   ),
              //                 ),
              //                 Row(
              //                   children: const [
              //                     Text(
              //                       "30 ",
              //                       style: TextStyle(
              //                         color: Colors.black,
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 16,
              //                       ),
              //                     ),
              //                     Text(
              //                       " Consultation",
              //                       style: TextStyle(
              //                         color: Colors.grey,
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 12,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Biography",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Medical School ",
                  style: TextStyle(
                    color: AppColors.dark_grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: height / 20,
                    width: width / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/h.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Harver Medical School",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Boston,United States",
                        style: TextStyle(
                          color: AppColors.dark_grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Education ",
                  style: TextStyle(
                    color: AppColors.dark_grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "UCT , MIT , Stamford University",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Awards ",
                  style: TextStyle(
                    color: AppColors.dark_grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "CMS Stage ( 2014 ) , AAG Fellow ( 2015 )",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Get an Appointment",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => GetAppointment(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.base,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.1, vertical: height * 0.015),
                      child: const Text(
                        "Appointment",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
