import 'package:amin_diagonastic/Screens/profile_section/test_scheduel_pop.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class test_schedule extends StatefulWidget {
  @override
  _test_scheduleState createState() => _test_scheduleState();
}

class _test_scheduleState extends State<test_schedule> {
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
                  "Test Scedule",
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
                              return test_scedule_pop(
                              );
                            });
                      },
                      child: SvgPicture.asset('assets/images/clock.svg',height: 50,width: 50,color: AppColors.base,)),
                )
              ],
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
                        Text("X-Ray",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
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
                        Text("Blood Test",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
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
