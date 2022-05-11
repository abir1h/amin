import 'package:amin_diagonastic/Screens/check_up/Blood_test.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class doctor_checkup extends StatefulWidget {
  @override
  _doctor_checkupState createState() => _doctor_checkupState();
}

class _doctor_checkupState extends State<doctor_checkup> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
                  ),
                  IconButton(onPressed: (){
                  }, icon: Icon(Icons.search,color:Colors.black,size:30))
                ],
              ),
            ),SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Tests",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),SizedBox(height: 25,),
           Row(
             children: [
               Expanded(child:  InkWell(
                 onTap:(){
                   
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>blood_test()));
                 },
                 child: Container(
                   child: Column(
                     children: [
                       Container(
                         width: width/3,

                         decoration: BoxDecoration(
                             color: AppColors.base,
                             borderRadius: BorderRadius.circular(12)),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               SvgPicture.asset('assets/images/bl.svg',height: 100,color: Colors.white,)

                             ],
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text(
                           "Blood Test",
                           style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 14),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),),Expanded(child:  Container(
                 child: Column(
                   children: [
                     Container(
                       width: width/3,

                       decoration: BoxDecoration(
                           color: AppColors.base,
                           borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/eye.svg',height: 100,color: Colors.white,)

                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                         "Eye Test",
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14),
                       ),
                     ),
                   ],
                 ),
               ),)
             ],
           ),SizedBox(height: 25,),
           Row(
             children: [
               Expanded(child:  Container(
                 child: Column(
                   children: [
                     Container(
                       width: width/3,

                       decoration: BoxDecoration(
                           color: AppColors.base,
                           borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/covid.svg',height: 100,color: Colors.white,)

                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                         "Covid-19 Test",
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14),
                       ),
                     ),
                   ],
                 ),
               ),),Expanded(child:  Container(
                 child: Column(
                   children: [
                     Container(
                       width: width/3,

                       decoration: BoxDecoration(
                           color: AppColors.base,
                           borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/medicine.svg',height: 100,color: Colors.white,)

                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                         "Vitamin Test",
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14),
                       ),
                     ),
                   ],
                 ),
               ),)
             ],
           ),SizedBox(height: 25,),
           Row(
             children: [
               Expanded(child:  Container(
                 child: Column(
                   children: [
                     Container(
                       width: width/3,

                       decoration: BoxDecoration(
                           color: AppColors.base,
                           borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/ultra.svg',height: 100,color: Colors.white,)

                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                         "Ultrasonography Test",
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14),
                       ),
                     ),
                   ],
                 ),
               ),),Expanded(child:  Container(
                 child: Column(
                   children: [
                     Container(
                       width: width/3,

                       decoration: BoxDecoration(
                           color: AppColors.base,
                           borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/xr.svg',height: 100,color: Colors.white,)

                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                         "X-Ray Test",
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14),
                       ),
                     ),
                   ],
                 ),
               ),)
             ],
           ),
          ],
        ),
      ),
    ));
  }
}
