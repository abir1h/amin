import 'package:amin_diagonastic/Screens/profile_section/test_scheduel_pop.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'medicine_scedule.dart';
class medicine_s extends StatefulWidget {
  @override
  _medicine_sState createState() => _medicine_sState();
}

class _medicine_sState extends State<medicine_s> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: Column(
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
                  "Medicine Scedule",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: (){
                        showDialog(
                            context:
                            context,
                            builder:
                                (context) {
                              return medicine_scedule_pop(
                              );
                            });
                      },
                      child:CircleAvatar(
                          backgroundColor: AppColors.base,
                          child: Icon(Icons.add,color: Colors.white,))
                )
                )],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height/10,
              width: width,
              decoration: BoxDecoration(
                  color: AppColors.base,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Paricel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                        Text("18 th December, 2021 8.00 pm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.light_base,
                          borderRadius: BorderRadius.circular(5)
                      ),child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Remove',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height/10,
              width: width,
              decoration: BoxDecoration(
                  color: AppColors.base,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Napa Extra",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                        Text("18 th December, 2021 8.00 pm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.light_base,
                          borderRadius: BorderRadius.circular(5)
                      ),child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Remove',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),),
    ));
  }
}
